<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('BackView.login');
});

Route::get('/product', [HomeController::class, 'showproduct']);
Route::get('/supplier', [HomeController::class, 'showsupplier']);
Route::get('/colegan', [HomeController::class, 'showcolegan']);
Route::get('/dashboard', [HomeController::class, 'showdashboard']);
Route::get('/Product/{Produk}/{hargaMin?}/{hargaMax?}', [HomeController::class, 'Product']);

Route::prefix('admin')->middleware('auth')->group(function(){
    Route::resource('Produk', ProdukController::class);
    Route::resource('user', UserController::class);; 
});

Route::get('/login', [AuthController::class, 'showlogin'])->name('login');
Route::post('/login', [AuthController::class, 'loginProcess']);
Route::get('/logout', [AuthController::class, 'logout']);

Route::get('/template', function () {
    return view('Template.base');
});


