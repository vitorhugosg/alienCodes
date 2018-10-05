<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use App\Models\Portfolio;
use App\Models\PortfolioImages;
use App\Models\CategoriaPortfolio;
use App\Models\Categoria_Portfolio;

class PortfolioController extends Controller{

    public function adicionarPortfolio(Request $request, Portfolio $portfolio, PortfolioImages $portfolioImages, Categoria_Portfolio $relacaoCat){
    	$data = $request->all();
		$imagens = array();
		//verificando se chegou imagens e colocando ela no lugar adequado
    	if ($file = $request->file()) {
			foreach ($file['files'] as $arquivo) {
				$ext = $arquivo->extension();
				$imagens[] = Storage::putFileAs('/portfolios', $arquivo, md5(time().rand ( 0 , 9999 )).'.'.$ext);
			}
		}else{
			return [
				'status' => false,
				'error' => 'Não chegaram arquivos'
			];
		}
		//SALVANDO PORTFOLIO
		$titulo = $data['titulo'];
		$descricao = $data['descricao'];
		$categorias = explode(',', $data['categorias']);
		$portfolio->titulo = $titulo;
		$portfolio->descricao = $descricao;
		$portfolio->data = date('Y-m-d H:i:s');
		if (!$portfolio->save()) {
			return [
				'status' => false,
				'error' => 'Falha ao cadastrar portfolio'
			];
		}

		//Salvando Imagens
		foreach ($imagens as $key => $image) {
			$insertImagens[$key]['portfolio_id'] = $portfolio->id;
			$insertImagens[$key]['path'] = $image;
		}

		if (!$portfolioImages->insert($insertImagens)) {
			return [
				'status' => false,
				'error' => 'Falha ao cadastrar imagens'
			];
		}

		foreach ($categorias as $key => $categoria) {
			$insetCategorias[$key]['portfolio_id'] = $portfolio->id;
			$insetCategorias[$key]['categoria_portfolio_id'] = $categoria;
		}

		
		if (!DB::table('categoria_portfolio__portfolios')->insert($insetCategorias)) {
			return [
				'status' => false,
				'error' => 'Falha ao cadastrar categoria'
			];
		}else{
			return[
				'status' => true,
				'mensagem' => 'Portfolio adicionado com sucesso',
				'portfolio' => $this->getPortfolio()
			];
		}

    }

    public function getCategorias(){
    	$categorias = CategoriaPortfolio::get();

    	foreach ($categorias as $key2 => $categoria) {
			$categorias->nomeCategoria = DB::table('categoria_portfolios')->where('id', $categoria->categoria_portfolio_id)->value('titulo_categoria');
		}
    	return $categorias;
    }

    public function getPortfolio(){
    	$portfolio = Portfolio::class;
    	$data = $portfolio::get();
    	foreach ($data as $key => $value) {
    		$data[$key]['imagens'] = DB::table('portfolio_images')->where('portfolio_id', $data[$key]['id'])->get();
    		$data[$key]['categorias'] = DB::table('categoria_portfolio__portfolios')->where('portfolio_id', $data[$key]['id'])->get();
    		// dd($data[$key]);
    		foreach ($data[$key]['categorias'] as $key2 => $categoria) {
    			$data[$key]['categorias'][$key2]->nomeCategoria = DB::table('categoria_portfolios')->where('id', $categoria->categoria_portfolio_id)->value('titulo_categoria');
    		}
    	}

    	return $data;
    }

    public function getPortfolioId($id){
    	$portfolio = Portfolio::class;
    	$data = $portfolio::find($id)->orderBy('id','asc');
    	$data['imagens'] = DB::table('portfolio_images')->where('portfolio_id', $data['id'])->get();

    	
    	foreach($data['imagens'] as $key => $imagem){
    		$data['imagens'][$key]->path = asset('storage/'.$imagem->path);
    	}
    	$data['categorias'] = DB::table('categoria_portfolio__portfolios')->where('portfolio_id', $data['id'])->get();
    	foreach ($data['categorias'] as $key2 => $categoria) {
			$data['categorias'][$key2]->nomeCategoria = DB::table('categoria_portfolios')->where('id', $categoria->categoria_portfolio_id)->value('titulo_categoria');
		}
    	return $data;

    }
}
