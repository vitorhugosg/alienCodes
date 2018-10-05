<?php

use Illuminate\Http\Request;
use \Mailjet\Resources;
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
Route::get('/portfolio/getportfolio', 'PortfolioController@getPortfolio');
Route::get('/portfolio/getportfoliobyid/{id}', 'PortfolioController@getPortfolioId');


Route::post('/contato', function(Request $request){
	$data = $request->all();
	// dd($data);
	$apikey = 'a02668a7ef0dc8d3c7c0040240c3f950';
	$apisecret = '15e47d14426421bdd0a6360e8cba4f32';
	$mj = new \Mailjet\Client($apikey, $apisecret,
              true,['version' => 'v3.1']);
	$body = [
		'Messages' => [
			[
				'From' => [
					'Email' => "contato@aliencodes.com.br",
					'Name' => "AlienCodes - Fábrica de Aliens"
				],
				'To' => [
					[
						'Email' => "contato@aliencodes.com.br",
						'Name' => "Alien Codes"
					]
				],
				'Subject' => 	"Novo contato chegou a nossa caixa de entrada!",
				'HTMLPart' => 	"<h3>Chegou um novo contato.</h3><br />".
								"<p>Nome: " .$data['nome'] ."</p><br>".
								"<p>Email: ".$data['email'] ."</p><br>".
								"<p>Telefone: ".$data['telefone'] ."</p><br>".
								"<p>Empresa: ".$data['empresa'] ."</p><br>".
								"<p>Mensagem: ".$data['mensagem'] ."</p><br>"

			]
		]
	];

	$response = $mj->post(Resources::$Email, ['body' => $body]);
	if($response->success()){
		return [
			'status' => true
		];
	}else{
		dd($response->getData());
		return [
			'status' => false,
			'mensagem'=> 'Houve uma falha ao enviar o email'
		];
	}
	
});