<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Document;
use App\Models\Category;
use App\Models\User;
use App\Models\Question;
use App\Models\QuestionChoice;
use App\Models\Document_images;

class DocumentCateController extends Controller
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
    public function add_category(Request $request){
        $cate = new Category;
        $cate->name = $request->name_category;
        $cate->save();
        return redirect('/')->with('pass', "Thêm hạng mục văn bản, tài liệu thành công!");
    }
    public function get_edit_cate($cate_id){
        $get_edit_cate = Category::where('id', $cate_id)->get();
        return view('block.main')->with('get_edit_cate', $get_edit_cate);
        // return redirect('/')->with('get_edit_catechild', $get_edit_catechild);
    }
    public function edit_cate(Request $request, $cate_id){
        $data = array();
        $data['name'] = $request->name_cate;
        $update_cate = Category::whereIn('id', [$cate_id])->update($data);
        return redirect('/')->with('pass', "Sửa hạng mục văn bản, tài liệu thành công!");
    }
    public function delete_category($id_cate){
        $getid_doc = Document::where('cate_id', $id_cate)->first();
        if($getid_doc){
            $get_doc = Document::where('cate_id', $id_cate)->get();
            foreach ($get_doc as $key => $value) {
                $files = Document_images::where('doc_id', $value->id)->get();
                foreach($files as $img){
                    $name = $img->name;
                    $file = public_path('images/'.$name);
                    $img = unlink($file);
                }
                Document_images::where('doc_id', $value->id)->delete();
                $cate = Category::where('id', $id_cate)->firstOrFail();
                $cate->Delete();
            }
            return back()->with('pass', "Xóa hạng mục văn bản, tài liệu thành công!");
        } else{
            $cate = Category::where('id', $id_cate)->firstOrFail();
            $cate->Delete();
            return back()->with('pass', "Xóa hạng mục văn bản, tài liệu thành công!");
        }
    }
}
