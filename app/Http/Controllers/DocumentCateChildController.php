<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Cate_child;
use App\Models\Document_images;
use App\Models\Document;
use App\Models\Category;
use App\Models\User;
use App\Models\Question;
use App\Models\QuestionChoice;

class DocumentCateChildController extends Controller
{
    public function __construct(){
        $data = [
            'category' => Category::all(),
            'user' => User::all(),
            'document' => Document::all(),
            'question' => Question::all(),
            'all_choice' => QuestionChoice::all(),
        ];
        view()->share('data', $data);
    }
    public function add_catechild(Request $request, $id){
        $cate = new Cate_child;
        $cate->cate_id = $id;
        $cate->name = $request->name_category;
        $cate->save();
        return redirect('/')->with('pass', "Thêm thể loại văn bản, tài liệu thành công!");
    }
    public function get_edit_catechild($catechild_id){
        $get_edit_catechild = Cate_child::where('id', $catechild_id)->get();
        return view('block.main')->with('get_edit_catechild', $get_edit_catechild);
    }
    public function edit_catechild(Request $request, $catechild_id){
        $data = array();
        $data['name'] = $request->name_catechild;
        $update_doccate = Cate_child::whereIn('id', [$catechild_id])->update($data);
        return redirect('/')->with('pass', "Sửa thể loại văn bản, tài liệu thành công!");
    }
    public function delete_catechild($catechild_id){
        $getid_doc = Document::where('catechild_id', $catechild_id)->first();
        if($getid_doc){ 
            $get_doc = Document::where('catechild_id', $catechild_id)->get();
            foreach ($get_doc as $key => $value) {
                $files = Document_images::where('doc_id', $value->id)->get();
                foreach($files as $img){
                    $name = $img->name;
                    $file = public_path('images/'.$name);
                    $img = unlink($file);
                }
                Document_images::where('doc_id', $value->id)->delete();
                Document::where('id', $value->id)->delete();
                $catechild = Cate_child::where('id', $catechild_id)->firstOrFail();
                $catechild->Delete();
            }
            return back()->with('pass', "Xóa thể loại văn bản, tài liệu thành công!");
        } else{
            $catechild = Cate_child::where('id', $catechild_id)->firstOrFail();
            $catechild->Delete();
            return back()->with('pass', "Xóa thể loại văn bản, tài liệu thành công!");
        }
    }
}
