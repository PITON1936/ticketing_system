<?php

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

Auth::routes();

Route::get('/', 'HomeController@index');

Route::get('/home', 'HomeController@index');

Route::get('new_ticket', 'TicketsController@create');
Route::post('new_ticket', 'TicketsController@store');

Route::get('tickets/{ticket_id}', 'TicketsController@show');
Route::get('tickets/{ticket_id}/{file_src}', 'TicketsController@getFile');
Route::get('my_tickets', 'TicketsController@userTickets');

Route::post('comment', 'CommentsController@postComment');

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'admin']], function() {
    Route::get('tickets', 'TicketsController@index');
});