<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ManyController;
use \App\Http\Controllers\UsersController;
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

Route::get('/', 'ManyController@index')->name('home');
Route::get('/allnews/{city?}', 'ManyController@allnews')->name('allnews');
Route::get('news/{news}/detail', 'ManyController@detail')->name('detail');
Route::post('/poisk','ManyController@poisk')->name('poisk');


Route::group(['middleware'=> 'auth'], function()
{
    Route::get('/logout', 'UsersController@logout')->name('logout');
    Route::get('subscribe/{news}/{user}','UsersController@subscribe')->name('subscribe');
    Route::get('nosubscribe/{news}/{user}','UsersController@nosubscribe')->name('nosubscribe');
});
Route::group(['middleware'=> 'guest'], function()
{
    Route::get('/register', 'UsersController@create')->name('register.create');
    Route::post('/register', 'UsersController@store')->name('register.store');
    Route::get('/login', 'UsersController@loginForm')->name('login.Form');
    Route::post('/login', 'UsersController@login')->name('login');
});
