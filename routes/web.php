<?php
namespace App\Http\Middleware;
use App\Http\Middleware\CheckRegister;
use App\Http\Middleware\CheckLogin;
use App\Http\Middleware\CheckEditUser;

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\DocumentController;
use App\Http\Controllers\DocumentCateController;
use App\Http\Controllers\DocumentCateChildController;
use App\Http\Controllers\DocumentDocCateController;
use App\Http\Controllers\ChoiceController;
use App\Http\Controllers\ChoiceManagerController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WeatherController;

Route::get('/',[HomeController::class, 'index'])->name('index')->middleware('login');
Route::get('weather', [WeatherController::class, 'getweather'])->name('weather');
Route::get('back',function () {
    return redirect('/');
});
Route::get('/login',[UserController::class, 'login'])->name('login');
Route::post('/handle-login',[UserController::class, 'handle_login']);
Route::get('/logout',[UserController::class, 'logout']);
Route::get('/register',[UserController::class, 'register']);
Route::post('/handle-regis',[UserController::class, 'handle_register'])->middleware('regis');


Route::prefix('document')->middleware('login')->group(function () {  //Xử lý Văn bản, tài liệu
    Route::get('/my-document/{user_id}',[DocumentController::class, 'my_document']);
    Route::prefix('cate')->group(function () {  //Xử lý danh mục văn bản
        Route::post('/add-category',[DocumentCateController::class, 'add_category']);
        Route::get('/delete-category/{id_cate}',[DocumentCateController::class, 'delete_category']);
        Route::get('/g-edit-cate/{cate_id}',[DocumentCateController::class, 'get_edit_cate']);
        Route::post('/edit-cate/{cate_id}',[DocumentCateController::class, 'edit_cate']);
    });
    Route::prefix('catechild')->group(function () {     //Xử lý thể loại văn bản
        Route::post('/add-catechild/{id}',[DocumentCateChildController::class, 'add_catechild']);
        Route::get('/g-edit-catechild/{catechild_id}',[DocumentCateChildController::class, 'get_edit_catechild']);
        Route::post('/edit-catechild/{catechild_id}',[DocumentCateChildController::class, 'edit_catechild']);
        Route::get('/delete-catechild/{catechild_id}',[DocumentCateChildController::class, 'delete_catechild']);
    });
    Route::prefix('doccate')->group(function () {   //xử lý loại văn bản
        Route::get('/g-doc-cate/{id}',[DocumentDocCateController::class, 'get_doc_cate'])->name('getdoccate');
        Route::post('/doc-cate-add/{id}',[DocumentDocCateController::class, 'add_doc_cate']);
        Route::get('/delete-doccate/{id_doccate}',[DocumentDocCateController::class, 'delete_doccate']);
        Route::get('/g-edit-doccate/{id_doccate}',[DocumentDocCateController::class, 'get_edit_doccate']);
        Route::post('/edit-doccate/{doccate_id}',[DocumentDocCateController::class, 'edit_doccate']);
    });
    Route::prefix('doc')->group(function () {   //xử lý văn bản
        Route::get('/g-document/{id}',[DocumentController::class, 'get_document'])->name('get_document');
        Route::get('/g-document-add/{doccate_id}',[DocumentController::class, 'get_document_add']);
        Route::post('/doc-add',[DocumentController::class, 'add_document']);
        Route::get('/g-edit-doc/{id}',[DocumentController::class, 'get_edit_doc']);
        Route::post('/edit-doc/{id}',[DocumentController::class, 'edit_doc']);
        Route::get('/delete-img/{id}',[DocumentController::class, 'delete_img']);
        Route::get('/g-search-doc/{doccate_id}',[DocumentController::class, 'get_search_doc']);
        Route::get('/search-home',[DocumentController::class, 'search_home']);
        Route::get('/delete-doc/{id}',[DocumentController::class, 'delete_doc']);
        Route::get('/like-doc/{doc_id}',[DocumentController::class, 'like_doc']);
        Route::get('/un-like-doc/{doc_id}',[DocumentController::class, 'like_doc']);
        //document_detail
        Route::get('/g-detail/{id}',[DocumentController::class, 'get_document_detail'])->name('document.detail');
    });
});
Route::prefix('user')->middleware('login')->group(function () {  //Xử lý quản lý người dùng
    Route::prefix('manager')->middleware('login')->group(function () {
        Route::get('list-user',[UserController::class, 'list_user'])->name('list_user');
        Route::get('g-add-user',[UserController::class, 'get_add_user']);
        Route::post('handle-add-user',[UserController::class, 'handle_add_user']);
        Route::get('delete-user/{user_id}',[UserController::class, 'delete_user']);

        Route::get('g-detail-user/{user_id}',[UserController::class, 'get_detail_user']);
        Route::post('/change-email/{user_id}',[UserController::class, 'handle_edit_user']);
        Route::post('/change-phone/{user_id}',[UserController::class, 'handle_edit_user']);
        Route::post('/change-fullname/{user_id}',[UserController::class, 'handle_edit_user']);
        Route::post('/change-password/{user_id}',[UserController::class, 'handle_edit_user']);

        Route::get('g-edit-user/{user_id}',[UserController::class, 'get_edit_user']);
        Route::get('change-role-user/{user_id}/{role_id}',[UserController::class, 'change_role_user']);
        Route::get('export-user',[UserController::class, 'export_user']);
        Route::get('search-user',[UserController::class, 'search_user']);
    }); 
});
Route::prefix('exam')->middleware('login')->group(function () {  //Xử lý kiểm tra
    Route::get('choice-home',[ChoiceController::class, 'choice_home'])->name('choicehome');
    Route::get('g-choice-catechild/{cate_id}',[ChoiceController::class, 'g_choice_catechild']);
    Route::get('g-choice/{catechild_id}/{count}',[ChoiceController::class, 'g_choice'])->name('');
    Route::post('handle-result',[ChoiceController::class, 'handle_result']);
    Route::get('my-history-choice/{user_id}',[ChoiceController::class, 'my_history_choice'])->name('myhistorychoice');
    Route::get('back-choice-home',function () {
        return redirect()->route('choicehome');
    });
    Route::prefix('manager')->group(function () {  //Xử lý danh mục văn bản
        Route::get('/g-home-manager',[ChoiceManagerController::class, 'get_home_manager'])->name('home_manager');
        Route::get('/g-cate-child/{cate_id}',[ChoiceManagerController::class, 'get_cate_child']);
        Route::get('/g-question/{catechild_id}',[ChoiceManagerController::class, 'get_question'])->name('list_question');
        Route::get('/g-add-question/{catechild_id}',[ChoiceManagerController::class, 'get_add_question']);
        Route::post('handle-add-question/{catechild_id}',[ChoiceManagerController::class, 'handle_add_question']);
        Route::get('/delete-question/{question_id}',[ChoiceManagerController::class, 'delete_question'])->name('delete_question');
        Route::get('/g-edit-question/{question_id}',[ChoiceManagerController::class, 'get_edit_question']);
        Route::post('handle-edit-question/{question_id}',[ChoiceManagerController::class, 'handle_edit_question']);
        Route::get('/export-question/{catechild_id}',[ChoiceManagerController::class, 'export_question']);
        Route::post('/import-question/{catechild_id}',[ChoiceManagerController::class, 'import_question']);
        Route::get('/search', [ChoiceManagerController::class, 'search']);
        Route::get('/export-choice',[ChoiceManagerController::class, 'export_choice']);
        Route::get('/search-name-choice', [ChoiceManagerController::class, 'search_name_choice']);
    });
});



