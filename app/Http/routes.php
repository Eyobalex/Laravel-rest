<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::group(['prefix' => 'api/v1'], function(){
    Route::resource('metting', 'MettingController', ['excpt' => ['edit', 'create']]);
    Route::resource('metting/registration', 'RegistrationController', ['only' => ['store', 'destroy']]);
    Route::post('user', ['uses' => 'AuthController@store']);
    Route::post('user/signin',  ['uses'=> 'AuthController@signin'] );
});