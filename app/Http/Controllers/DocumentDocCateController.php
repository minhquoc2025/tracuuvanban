<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Document;
use App\Models\Document_images;
use App\Models\Doccate;
use App\Models\Cate_child;
use App\Models\Category;
use App\Models\User; 
use Session;
class DocumentDocCateController extends Controller
{
    public function __construct(){
        $this->middleware(function ($request, $next) {
            $data = [
                'category' => Category::all(),
                'u_r' => User::find(Session('id_user')),
            ];
            view()->share('data', $data);
           return $next($request);
        });
    }
    public function get_doc_cate($id){
        $doccate = Doccate::whereIn('catechild_id', [$id])->get();
        return view('pages.document.document_doccate')->with('doccate', $doccate)->with('id', $id);
    }
    public function add_doc_cate(Request $request, $id){
        $id_cate = Cate_child::where('id', $id)->first();
        $doccate = new Doccate;
        $doccate->catechild_id = $id;
        $doccate->cate_id = $id_cate->cate_id;
        $doccate->name = $request->name;
        $doccate->save();
        return back()->with('pass', "Thêm loại văn bản, tài liệu thành công!");
    }
    public function delete_doccate($id_doccate){
        $get_id_doc = Document::where('doccate_id', $id_doccate)->first();
        if($get_id_doc){
            $get_doc = Document::where('doccate_id', $id_doccate)->get();
            foreach ($get_doc as $key => $value) {
                $files = Document_images::where('doc_id', $value->id)->get();
                foreach($files as $img){
                    $name = $img->name;
                    $file = public_path('images/'.$name);
                    $img = unlink($file);
                }
                Document_images::where('doc_id', $value->id)->delete();
                Document::where('id', $value->id)->delete();
                Doccate::where('id', $id_doccate)->delete();
            }
            return back()->with('pass', "Xóa loại văn bản, tài liệu thành công!");
        } else{
            Doccate::where('id', $id_doccate)->delete();
            return back()->with('pass', "Xóa loại văn bản, tài liệu thành công!");
        }
    }
    public function get_edit_doccate($id_doccate){
        $get_edit_doccate = Doccate::whereIn('id', [$id_doccate])->get();
        return view('pages.document.document_doccate', ['id' => $get_edit_doccate[0]->catechild_id])->with('get_edit_doccate', $get_edit_doccate);
    }
    public function edit_doccate(Request $request, $doccate_id){
        $data = array();
        $data['name'] = $request->name_doccate;
        $update_doccate = Doccate::whereIn('id', [$doccate_id])->update($data);
        $id_doccate = Doccate::whereIn('id', [$doccate_id])->get();
        //return view('pages.document.document_doccate', ['id' => $id_doccate[0]->catechild_id])->with('doccate', $id_doccate);
        return redirect()->route('getdoccate',['id' => $id_doccate[0]->catechild_id])->with('doccate', $id_doccate)->with('pass', "Sửa loại văn bản, tài liệu thành công!");
    }
}
