<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Cate_child;
use App\Models\Question;
use App\Models\QuestionChoice;
use App\Models\User;

use App\Exports\ExportChoice;
use App\Exports\ExportQuestion;
use App\Imports\ImportQuestion;
use Excel;
use DB;

class ChoiceManagerController extends Controller
{
    public function __construct(){
        $data = [
            'category' => Category::all(),
            'choice' => QuestionChoice::orderby('id', 'DESC')->paginate(10),
            'question' => Question::all(),
        ];
        view()->share('data', $data);
    }
    public function get_home_manager(){
        $cate = Category::all();
        return view('pages.exam.mng-home')->with('cate', $cate);
    }
    public function get_cate_child($cate_id){
        $cate_child = Cate_child::where('cate_id', $cate_id)->get();
        return view('pages.exam.mng-home')->with('catechild', $cate_child);
        // $getchoice = new QuestionChoice;
        // $gg = Questionchoice::all();
        // dd($gg);
    }
    public function get_question($catechild_id){
        $qs = Question::where('catechild_id', $catechild_id)->paginate(15);
        return view('pages.exam.mng-question', compact('catechild_id'))->with('qs', $qs);
    }
    public function get_add_question($catechild_id){
        return view('pages.exam.mng-question-EditOrAdd', compact('catechild_id'));
    }
    public function handle_add_question($catechild_id,Request $request){
        $cate = Cate_child::find($catechild_id);
        $add = new Question;
        $add->name = $request->name_question;
        $add->answer1 = $request->answer1;
        $add->answer2 = $request->answer2;
        $add->answer3 = $request->answer3;
        $add->answer4 = $request->answer4;
        $add->answertrue = $request->flexRadioDefault;
        $add->catechild_id = $catechild_id;
        $add->cate_id = $cate->cate_id;
        $add->save();
        return redirect()->route('list_question', ['catechild_id' => $catechild_id])->with('pass', "Thêm thành công");
    }
    public function delete_question($question_id){
        $qs = Question::where('id', $question_id)->delete();
        return redirect()->back()->with('pass', "Xóa thành công");
    }
    public function get_edit_question($question_id){
        $get_qs = Question::find($question_id);
        return view('pages.exam.mng-question-EditOrAdd')->with('get', $get_qs);
    }
    public function handle_edit_question($question_id, Request $request){
        $update = Question::find($question_id);
        $update->name = $request->name_question;
        $update->answer1 = $request->answer1;
        $update->answer2 = $request->answer2;
        $update->answer3 = $request->answer3;
        $update->answer4 = $request->answer4;
        $update->answertrue = $request->flexRadioDefault;
        $update->update();
        return redirect()->route('list_question', ['catechild_id' => $update->catechild_id])->with('pass', "Thay đổi thành công");
    }
    public function export_question($catechild_id, Request $request){
        return Excel::download(new ExportQuestion ($catechild_id), 'question.xlsx');
    }
    public function import_question($catechild_id, Request $request){
        $getcate_id = Cate_child::find($catechild_id);
        Excel::import(new ImportQuestion($catechild_id, $getcate_id->cate_id), 
            $request->file('list')->store('files'));
        return redirect()->back();
    }
    public function search(Request $request)
    {
        if ($request->ajax()) {
            $output = '';
            $products = Question::where('name', 'LIKE', '%' . $request->search . '%')->get();
            if ($products) {
                $stt = 1;
                foreach ($products as $key => $product) {
                    $link = "../delete-question/$product->id";
                    $text = "<i class='ti ti-x fs-5' style='color: red'></i>";
                    $linkedit = "../g-edit-question/$product->id";
                    $textedit = "<i class='ti ti-edit fs-5' ></i>";
                    $output .= '<tr>
                    <td>' . $stt++ . '</td>
                    <td>' . $product->name . '</td>
                    <td>' . $product->answertrue . '</td>
                    <td>' . sprintf('<a href="%s">%s</a>', $link, $text) . ' ' . sprintf('<a href="%s">%s</a>', $linkedit, $textedit) . '</td>
                    </tr>';
                }
            }
            return Response($output);
        }
    }
    public function export_choice(Request $request){
        return Excel::download(new ExportChoice, 'list_choice.xlsx');
    }
    public function search_name_choice(Request $request)
    {
        if ($request->ajax()) {
            $output = '';
            // $products = User::where('fullname', 'LIKE', '%' . $request->search . '%')->get();
            //$products = User::where('fullname', 'LIKE', '%' . $request->search . '%')->leftJoin('QuestionChoice', 'QuestionChoice.user_id', '=', 'User.id')->get();
            $products = DB::table('users')
             ->join('question_choice', 'users.id', '=', 'question_choice.user_id')
             ->join('cate_child', 'question_choice.catechild_id', '=', 'cate_child.id')
                ->select('question_choice.created_at as time','users.fullname as fullname','question_choice.point as point','cate_child.name as name')
                ->where('fullname', 'LIKE', '%' . $request->search . '%')
                ->orwhere('name', 'LIKE', '%' . $request->search . '%')->get();

            if ($products) {
                $stt = 1;
                foreach ($products as $key => $product) {
                    $output .= '<tr>
                    <td>' . $stt++ . '</td>
                    <td>' . $product->fullname . '</td>
                    <td>' . $product->point . '</td>
                    <td>' . $product->name . '</td>
                    <td>' . $product->time . '</td>
                    </tr>';
                }
            }
            return response($output);
        }
    }
}
