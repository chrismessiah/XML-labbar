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


Route::auth();
Route::get('/', 'BlogpostController@show_all');
Route::get('/blogpost/{id}', 'BlogpostController@show_one');
//Route::get('/blogpost/{id}/edit', 'BlogpostController@show_one');
Route::get('/blogpost/write', function(){return view('blogpost.write');})->middleware('auth');
Route::post('/blogpost/publish', 'BlogpostController@publish'); // restriction from controller

Route::get('/controlpanel', function(){return view('admin');})->middleware('admin');




// ONLY FOR TESTING
Route::get('/reset', function(){return view('/auth.passwords.reset');});
Route::get('/request', function(){return view('/auth.passwords.request');});
// ONLY FOR TESTING

Route::get('/.well-known/acme-challenge/'.env('CERT_LINK_KEY'), 'CertificateController@lets_encrypt');

// facebook
Route::get('auth/facebook', 'Auth\AuthController@redirectToFacebookOAUTH');
Route::get('auth/facebook/callback', 'Auth\AuthController@facebookCallbackLogin');
