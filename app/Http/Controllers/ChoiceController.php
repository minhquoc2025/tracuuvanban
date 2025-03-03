<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Cate_child;
use App\Models\Question;
use App\Models\QuestionChoice;
use App\Models\Qchoice;
use App\Models\User;
use Session;
use DateTime;
class ChoiceController extends Controller
{
    public function __construct(){
        $data = [
            'category' => Category::all(),
        ];
        view()->share('data', $data);
    }
    public function choice_home(){
        $cate = Category::all();
        
        $now = new DateTime();  // Current time as DateTime object
        $now->format('H:i:s');  // Display current time
        $get_time = Qchoice::where('user_id', session()->get('id_user'))->get(); 
        if($get_time->isNotEmpty()){
            $timestart = $get_time[0]->created_at;
            $timeObj = new DateTime($timestart);
            $interval = $now->diff($timeObj);
            $differenceInHours = $interval->s;
            if($differenceInHours > count($get_time)){
                $get_time->each->delete();
            }
        }
        return view('pages.exam.choice-home')->with('cate', $cate);
    }
    public function g_choice_catechild($cate_id){
        $catechild = Cate_child::where('cate_id',$cate_id)->get();
        return view('pages.exam.choice-catechild')->with('catechild', $catechild);
    }
    public function g_choice($catechild_id, $count){
        $user_id = session()->get('id_user');
        $question = Qchoice::where('user_id', $user_id)->get();
        if ($question->isEmpty()) {
            $randomQuestion = Question::where('catechild_id', $catechild_id)->inRandomOrder()->limit($count)->get();
            if($randomQuestion->isNotEmpty()){
                foreach($randomQuestion as $ques){
                    $choice = new Qchoice;
                    $choice->question_id = $ques->id;
                    $choice->user_id = $user_id;
                    $choice->save();
                    $time = $choice->created_at;
                }
                return view('pages.exam.choice')->with('question', $randomQuestion)->with('time', $time)->with('count', $count);
            } else{
                return redirect()->back()->with('err', "Xin lỗi, bộ câu hỏi đang hoàn thiện, mời bạn quay lại sau");
            }
        } else {
            $questionsContent = Qchoice::where('user_id', $user_id)
            ->with('choice_question') // gọi quan hệ trong model
            ->get() // lấy dữ liệu
            ->pluck('choice_question'); // Trích xuất quan hệ trong model
            $time = $question[0]->created_at;
            return view('pages.exam.choice')->with('question', $questionsContent)->with('time', $time)->with('count', $count);
        }
    }
    public function handle_result(Request $request){
        $c_true = 0;
        $i = 0;
        $qs = [];
        $list = array();
        $data = $request->all(); 
        unset($data['_token']); //bỏ token
        foreach ($request->question as $key => $value) {
            $qs = Question::where('id', $value)->get();  //lấy câu hỏi=>answertrue   
            $i++;
            $list[] = $qs;
            if(isset($data['ans-'.$i])){
                if ($qs[0]->answertrue == $data['ans-'.$i]) {   //nếu ĐA true == ĐA pick => +point
                    $c_true++;
                } 
            }else{
                $data['ans-'.$i]= "không chọn";
            }
        }
        $count = count($list);
        switch ($count) {
            case '10':
                $point = $c_true*1;
                $arr = [$point, $c_true];
                break;
            case '20':
                $point = $c_true*0.5;
                $arr = [$point, $c_true];
                break;
            case '25':
                $point = $c_true*0.4;
                $arr = [$point, $c_true];
                break; 
            default:
                $point = $c_true*1;
                $arr = [$point, $c_true];
                break;
        }

        $delete = Qchoice::where('user_id',session()->get('id_user'))->delete(); //xóa dử liệu của user trong Qchoice
        // dd($arr[1]);
        if($delete > 0){
            $rs = new QuestionChoice;
            $rs->point = $arr[0];
            $rs->count_anser = $arr[1];
            $rs->user_id = session()->get('id_user');
            $rs->doccate_id = $qs[0]->doccate_id;
            $rs->catechild_id = $qs[0]->catechild_id;
            $rs->cate_id = $qs[0]->cate_id;
            $rs->save();
        }
        return view('pages.exam.choiceresult')->with('qs', $list)->with('pick', $data)->with('point', $arr);
    }
    public function my_history_choice($user_id){
        $get_choice = Questionchoice::where('user_id', $user_id)->orderby('id', 'desc')->paginate(15);
        return view('pages.exam.history-choice',compact('get_choice'));
    }
}
