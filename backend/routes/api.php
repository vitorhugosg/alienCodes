<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
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

//ROTA DE LOGIN
Route::post('/usuario/login','Usuario@login');
//ROTA DE CADASTRO
Route::post('/usuario/cadastro','Usuario@cadastro');

Route::post('/portfolio/add', 'PortfolioController@adicionarPortfolio');

Route::get('/portfolio/getcategorias', 'PortfolioController@getCategorias');