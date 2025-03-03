<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Document;
use App\Models\Category;
use App\Models\User;
use App\Models\Question;
use App\Models\QuestionChoice;
use Session;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
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
    public function index(){

        return view('block.main');
        
    }
}
