<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Mailjet\Resources;

Route::post('/usuario/login', 'Usuario@login')->middleware('throttle:5,1');
Route::post('/usuario/cadastro', 'Usuario@cadastro')->middleware('throttle:5,1');

Route::post('/portfolio/add', 'PortfolioController@adicionarPortfolio')
    ->middleware(['auth:api', 'portfolio.admin', 'throttle:10,1']);
Route::get('/portfolio/getcategorias', 'PortfolioController@getCategorias');
Route::get('/portfolio/getportfolio', 'PortfolioController@getPortfolio');
Route::get('/portfolio/getportfoliobyid/{id}', 'PortfolioController@getPortfolioId');

Route::post('/contato', function (Request $request) {
    $data = $request->validate([
        'nome' => 'required|string|max:120',
        'email' => 'required|email|max:254',
        'telefone' => 'nullable|string|max:40',
        'empresa' => 'nullable|string|max:160',
        'mensagem' => 'required|string|max:5000',
    ]);

    $apiKey = config('services.mailjet.key');
    $apiSecret = config('services.mailjet.secret');

    if (!$apiKey || !$apiSecret) {
        return response()->json([
            'status' => false,
            'mensagem' => 'Serviço de contato indisponível.',
        ], 503);
    }

    $body = [
        'Messages' => [[
            'From' => [
                'Email' => 'contato@aliencodes.com.br',
                'Name' => 'AlienCodes - Fábrica de Aliens',
            ],
            'To' => [[
                'Email' => 'contato@aliencodes.com.br',
                'Name' => 'AlienCodes',
            ]],
            'Subject' => 'Novo contato pelo site AlienCodes',
            'HTMLPart' => view('emails.contato', ['data' => $data])->render(),
        ]],
    ];

    try {
        $client = new \Mailjet\Client($apiKey, $apiSecret, true, ['version' => 'v3.1']);
        $response = $client->post(Resources::$Email, ['body' => $body]);
    } catch (\Throwable $exception) {
        Log::error('Falha no envio de contato via Mailjet.');

        return response()->json([
            'status' => false,
            'mensagem' => 'Não foi possível enviar sua mensagem.',
        ], 502);
    }

    if (!$response->success()) {
        Log::warning('Mailjet recusou uma mensagem de contato.');

        return response()->json([
            'status' => false,
            'mensagem' => 'Não foi possível enviar sua mensagem.',
        ], 502);
    }

    return response()->json(['status' => true]);
})->middleware('throttle:5,1');
