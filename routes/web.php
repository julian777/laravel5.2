<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | This file is where you may define all of the routes that are handled
  | by your application. Just tell Laravel the URIs it should respond
  | to using a Closure or controller method. Build something great!
  |
 */
/*

  Route::get('/', function () {
  return view('welcome');
  });

  Auth::routes();

  Route::get('/home', 'HomeController@index');


  Route::get('admins/login','AdministratorsController@showLoginform');
 * 
 * 
 */

Route::group(['middleware' => 'web'], function() {
    Route::get('/', function () {
        return view('welcome');
    });
    Route::auth();

    Route::get('/home', 'HomeController@index');
    Route::get('admins/login', 'AdministratorsController@showLoginform');
    
    Route::post('admins/login','AdministratorsController@login');
    Route::get('admins/area','AdministratorsController@secret');
});
