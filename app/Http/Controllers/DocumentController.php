<?php

namespace App\Http\Controllers;
use Session;
use Illuminate\Http\Request;
use App\Models\Like_document;
use App\Models\Document;
use App\Models\Document_images;
use App\Models\DocumentRead;
use App\Models\Category;
use App\Models\Cate_child;
use App\Models\Doccate;
use App\Models\User;
use App\Models\Question;
use App\Models\QuestionChoice;
use View;

class DocumentController extends Controller
{
    public function __construct(){
        $this->middleware(function ($request, $next) {
            $data = [
                'category' => Category::all(),
                'u_r' => User::find(Session('id_user')),
                'user' => User::all(),
                'document' => Document::all(),
                'question' => Question::all(),
                'all_choice' => QuestionChoice::all(),
            ];
            view()->share('data', $data);
           return $next($request);
        });
    }

    public function get_document($id){
        $doc = Document::where('doccate_id', $id)->paginate(10);
        //$breadcrumb = Document::where('doccate_id', $id)->LIMIT(1)->get();
        $breadcrumb = Doccate::where('id', $id)->get();
        return view('pages.document.document')->with('doc', $doc)->with('id_doccate', $id)->with('breadcrumb', $breadcrumb);
    }
    public function get_document_add($doccate_id){
        $doccate = Doccate::where('id', $doccate_id)->get();
        return view('pages.document.document_add')->with('doccate', $doccate);
    }
    public function add_document(Request $request){
        $post = new Document;
        $post->document_code = $request->document_code;
        $post->type = $request->type;
        $post->title = $request->title;
        $post->user_id = Session('id_user');
        $post->content = $request->document_date;
        $post->doccate_id = $request->id_doccate;
        $post->catechild_id = $request->id_catechild;
        $post->cate_id = $request->id_cate;
    
        foreach($request->file('world') as $item){
            $extension = $item->extension(); // laays đuôi file
            if($extension != 'png' && $extension != 'jpg' && $extension != 'JPEG' && $extension != 'pdf'){
                return redirect()->back()->withErrors($post)->withInput()->with('err', "Hệ thống chỉ nhận file PNG, JPG, JPEG");
            } else{
                $filename = str_random(1).'_'.$item->getClientOriginalName(); //tạo chuỗi random và lấy tên file
                while(file_exists('./public/images/'.$filename)){
                    $filename = str_random(4).'_'.$item->getClientOriginalName();
                }
                $item->move(public_path('images'), $filename);
                $post->save();
                $img = new Document_images; 
                $img->name = $filename;
                $img->doc_id = $post->id;
                $img->save();
            }
        }
        return back()->with('pass', "Thêm Văn bản, tài liệu thành công");
    }
    public function get_edit_doc($id){
        $doc = Document::where('id', $id)->get();
        $doc_img = Document_images::where('doc_id', $id)->orderby('id', 'ASC')->get();
        return view('pages.document.document_edit')->with('doc', $doc)->with('doc_img', $doc_img);
    }
    public function edit_doc($id, Request $request){
        $flight = Document::find($id);
        $flight->document_code = $request->document_code;
        $flight->title = $request->title;
        $flight->content = $request->document_date;
        $flight->type = $request->type;
        $flight->save();
        if($request->hasFile('world')){ 
            foreach($request->file('world') as $item){
                $extension = $item->extension();
                if($extension != 'png' && $extension != 'jpg' && $extension != 'JPEG' && $extension != 'pdf'){
                    echo "Hệ thống chỉ lưu ảnh đuôi png, jpg, jpeg";
                } else{
                    // $img_file_name = $item->getClientOriginalName();
                    $filename = str_random(4).'_'.$item->getClientOriginalName();   
                    //tạo chuỗi random và lấy tên file
                    $item->move(public_path('images'), $filename);

                    $img = new Document_images;
                    $img->name = $filename;
                    $img->doc_id = $id;
                    $img->save();
                    // return redirect()->route('quoc', ['id' => $id_topic]);
                }
            }
            return redirect()->route('get_document', ['id' => $flight->doccate_id])->with('pass', "Sửa Văn bản, tài liệu thành công");
        } else{
            return redirect()->route('get_document', ['id' => $flight->doccate_id])->with('pass', "Sửa Văn bản, tài liệu thành công");
        }
    }
    public function delete_img($id){
        $files = Document_images::where('id', $id)->get();
        foreach($files as $img){
            $name = $img->name;
            $file = public_path('images/'.$name);
            $img = unlink($file);
            Document_images::where('id', $id)->delete();
        }
        return back();
    }
    public function get_search_doc(Request $request, $doccate_id){
        $product = Document::where('doccate_id', $doccate_id);
        $breadcrumb = Doccate::where('id', $doccate_id)->get();
        if (!empty($request->search_home)) {
            $product->where(function ($query) use ($request) {
                $query->where('title', 'LIKE', '%' . $request->search_home . '%')
                    ->orWhere('document_code', 'LIKE', '%' . $request->search_home . '%');
            });
        }

        if ($request->category_document != "Null") {
            $product->where(function ($query) use ($request) {
                $query->where('type', 'LIKE', '%' . $request->category_document . '%');
            });
        }

        if (!empty($request->date_y)) {
            $product->whereYear('content', $request->date_y);
        }
        if (!empty($request->date_m)) {
            $product->whereMonth('content', $request->date_m);
        }
        if (!empty($request->date_d)) {
            $product->whereDay('content', $request->date_d);
        }

        $products = $product->paginate(10)->withQueryString();  //truyền $request qua trang
        return view('pages.document.document_Search', compact('doccate_id'))->with('breadcrumb', $breadcrumb)->with('products', $products)->with($request->all());
    }
    public function get_search_doc1(Request $request, $doccate_id){
        $product = Document::query()->where('doccate_id', $doccate_id)->orderby('content', 'desc');
        $breadcrumb = Doccate::where('id', $doccate_id)->get();
        if (!empty($request->title)) {
            if(!empty($request->date_m) && !empty($request->date_d)){
                $product->WhereMonth('content',$request->date_m)->WhereDay('content',$request->date_d)->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->title . '%')->orWhere('document_code', 'LIKE', '%' . $request->title . '%');
                });
            } elseif(!empty($request->date_m)){
                $product->WhereMonth('content',$request->date_m)->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->title . '%')->orWhere('document_code', 'LIKE', '%' . $request->title . '%');
                });
            } elseif(!empty($request->date_d)){
                $product->WhereDay('content',$request->date_d)->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->title . '%')->orWhere('document_code', 'LIKE', '%' . $request->title . '%');
                });
            } elseif(!empty($request->date_y)){
                $product->WhereYear('content',$request->date_y)->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->title . '%')->orWhere('document_code', 'LIKE', '%' . $request->title . '%');
                });
            } else{
                $product->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->title . '%')->orWhere('document_code', 'LIKE', '%' . $request->title . '%');
                });
            }
        } else{
            if(!empty($request->date_m) && !empty($request->date_d) && !empty($request->date_y)){
                $product->WhereYear('content',$request->date_y)->WhereMonth('content',$request->date_m)->WhereDay('content',$request->date_d);
            } elseif(!empty($request->date_m) && !empty($request->date_d)){
                $product->WhereMonth('content',$request->date_m)->WhereDay('content',$request->date_d);
            } elseif(!empty($request->date_m)){
                $product->WhereMonth('content',$request->date_m);
            } elseif(!empty($request->date_d)){
                $product->WhereDay('content',$request->date_d);
            } else{
                $product->whereYear('content',$request->date_y);
            }
        }
        
        $products =  $product->get();
        return view('pages.document.document_search')->with('products', $products)->with('breadcrumb', $breadcrumb)->with('doccate_id', $doccate_id)->with($request->all());
    }
    public function search_home(Request $request){
        $product = Document::query();

        if (!empty($request->search_home)) {
            $product->where(function ($query) use ($request) {
                $query->where('title', 'LIKE', '%' . $request->search_home . '%')
                    ->orWhere('document_code', 'LIKE', '%' . $request->search_home . '%');
            });
        }

        if ($request->category_document != "Null") {
            $product->where(function ($query) use ($request) {
                $query->where('type', 'LIKE', '%' . $request->category_document . '%');
            });
        }

        if (!empty($request->date_y)) {
            $product->whereYear('content', $request->date_y);
        }
        if (!empty($request->date_m)) {
            $product->whereMonth('content', $request->date_m);
        }
        if (!empty($request->date_d)) {
            $product->whereDay('content', $request->date_d);
        }

        $products = $product->paginate(10)->withQueryString();  //truyền $request qua trang
        return view('block.main')->with('products', $products)->with($request->all());
    }
    public function search_homeold(Request $request){
        $product = Document::query();
        if (!empty($request->search_home)) {
            if(!empty($request->date_m) && !empty($request->date_d)){
                $product->WhereMonth('content',$request->date_m)->WhereDay('content',$request->date_d)->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->search_home . '%')->orWhere('document_code', 'LIKE', '%' . $request->search_home . '%');
                });
            } elseif(!empty($request->date_m)){
                $product->WhereMonth('content',$request->date_m)->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->search_home . '%')->orWhere('document_code', 'LIKE', '%' . $request->search_home . '%');
                });
            } elseif(!empty($request->date_d)){
                $product->WhereDay('content',$request->date_d)->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->search_home . '%')->orWhere('document_code', 'LIKE', '%' . $request->search_home . '%');
                });
            } elseif(!empty($request->date_y)){
                $product->WhereYear('content',$request->date_y)->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->title . '%')->orWhere('document_code', 'LIKE', '%' . $request->title . '%');
                });
            } else{
                $product->where(function ($query) use ($request) {
                    $query->where('title', 'LIKE', '%' . $request->search_home . '%')->orWhere('document_code', 'LIKE', '%' . $request->search_home . '%');
                });
            }
        } else{
            if(!empty($request->date_m) && !empty($request->date_d) && !empty($request->date_y)){
                $product->WhereYear('content',$request->date_y)->WhereMonth('content',$request->date_m)->WhereDay('content',$request->date_d);
            } elseif(!empty($request->date_m) && !empty($request->date_d)){
                $product->WhereMonth('content',$request->date_m)->WhereDay('content',$request->date_d);
            } elseif(!empty($request->date_m)){
                $product->WhereMonth('content',$request->date_m);
            } elseif(!empty($request->date_d)){
                $product->WhereDay('content',$request->date_d);
            } else{
                $product->whereYear('content',$request->date_y);
            }
        }
        $products =  $product->get();
        return view('block.main')->with('products', $products)->with($request->all());
    }
    
    public function delete_doc($id){
        $files = Document_images::where('doc_id', $id)->get();
        $get_iddoccate = Document::where('id', $id)->get();
        if($files->isEmpty()){
            Like_document::where('doc_id', $id)->delete();
            Document::where('id', $id)->delete();
        }else{
            foreach($files as $img){
                $name = $img->name;
                $file = public_path('images/'.$name);
                $img = unlink($file);
    
                Document::where('id', $id)->delete();
                Document_images::where('doc_id', $id)->delete();
                Like_document::where('doc_id', $id)->delete();
            }
        }
        return redirect()->route('get_document',['id' => $get_iddoccate[0]->doccate_id])->with('pass', "Xóa thành công! ");    
    }
// DOCUMENT DETAIL
    public function get_document_detail($id){
        // Danh sách các stop words tiếng Việt (có thể mở rộng thêm)
        $stopWords = ['là', 'một', 'và', 'nhưng', 'của', 'giúp', 'việc', 'để', 'với', 'trở', 'nên', 'hơn'];

        $currentText = Document::findOrFail($id);
         // Chuyển văn bản thành chữ thường và loại bỏ ký tự đặc biệt
        $text = strtolower(preg_replace('/[^\p{L}\p{N}\s]/u', '', $currentText->title));
        
        // Tách văn bản thành mảng từ
        $words = explode(' ', $text);
        
        // Loại bỏ từ rỗng và các stop words
        $filteredWords = array_filter($words, function ($word) use ($stopWords) {
            return !in_array($word, $stopWords) && strlen($word) > 2;
        });

        // Đếm tần suất xuất hiện của các từ
        $wordCounts = array_count_values($filteredWords);

        // Sắp xếp từ theo tần suất giảm dần
        arsort($wordCounts);

        $important = array_slice($wordCounts, 0, 2); // Lấy 10 từ quan trọng nhất
        
        //ghép mảng thành chuỗi 
        $keys = array_keys($important);

        $final = implode(' ', $keys);

        //search
        $related = Document::where('title', 'LIKE', '%' . $final . '%')->get();
        $relatedcate = Document::RelatedByCategory($currentText->cate_id, $currentText->id)->limit(4)->get();

        $doc = Document::where('id', $id)->get();
        $doc_img = Document_images::where('doc_id', $id)->orderby('id', 'ASC')->get();

        // dd($final);
        $textId = $currentText->id;
        $userId = Session::get('id_user');

        $log = DocumentRead::firstOrCreate(
            ['text_id' => $textId, 'user_id' => $userId],
            ['read_count' => 0]
        );

        $log->increment('read_count');
        return view('pages.document.document_detail', compact('related','doc', 'doc_img','relatedcate'));
    }
//MY DOCUMENT
    public function my_document(){
        return view('pages.document.my_document');
    }
    public function like_doc($doc_id){
        $docu = Like_document::where('doc_id',$doc_id)->where('user_id', Session('id_user'))->first();
        if($docu){
            $docu->delete();
            return redirect()->back()->with('pass',"Thay đổi thành công")->withInput();;
        } else{
            $doc = new Like_document;
            $doc->doc_id = $doc_id;
            $doc->user_id = Session('id_user');
            $doc->save();
            return redirect()->back()->with('pass',"Đã thêm vào văn bản yêu thích của bạn")->withInput();
        }
    }
}
