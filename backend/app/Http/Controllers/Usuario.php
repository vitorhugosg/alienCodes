<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Hash;

class Usuario extends Controller
{
    public function login(Request $request){
    	//pegando dados do request
	    $data = $request->all();
	    //validando informações!
	    $validacao = Validator::make($data, [
	            'email' => 'required|string|email|max:255',
	            'password' => 'required|string',
	        ]);
	    //verificando se tem erros
	    if ($validacao->fails()) {
	    	return [
	    		'status' => false,
	    		'validacao' => true,
	    		'erros' => $validacao->errors()
	    	];
	    }

		if (Auth::attempt(['email'=>$data['email'],
			'password'=>$data['password']])) {
			$user = auth()->user();
	    	//retornando token(accessToken) e criando tokeen
	    	$user->token = $user->createToken($user->email)->accessToken;
	    	
		    return [
		    	'status' => 'true',
		    	'usuario' => $user
		    ];
		}else{
			$resposta['status'] = false;
			return $resposta;
		}
    }

    public function cadastro(Request $request){
    	$data = $request->all();
	    //validando informações!
	    $validacao = Validator::make($data, [
	            'name' => 'required|string|max:255',
	            'email' => 'required|string|email|max:255|unique:users',
	            'password' => 'required|string|min:6|confirmed',
	        ]);
	    //verificando se tem erros
	    if ($validacao->fails()) {
	    	return [
	    		'status' => false,
	    		'validacao' => true,
	    		'erros' => $validacao->errors()
	    	];
	    }else{
	    	$imagem = '/perfils/padrao.png';
	    	$user = User::create([
	            'name' => $data['name'],
	            'email' => $data['email'],
	            'password' => Hash::make($data['password']),
	            'imagem' => $imagem
	        ]);
		    //retornando token(accessToken) e criando tokeen
		    
		    $user->token = $user->createToken($user->email)->accessToken;
		    //padrão de resposta correta
		    return [
		    	'status' => 'true',
		    	'usuario' => $user
		    ];
		}
    }
}
