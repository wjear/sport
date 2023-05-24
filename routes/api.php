<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


//不修改RouteServiceProvider的$namespace用这个
//Route::get('sport',[\App\Http\Controllers\SportController::class,'index']);

Route::get('count','SportController@data');
Route::get('list','SportController@list');

