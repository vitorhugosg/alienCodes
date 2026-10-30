<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use App\Models\Portfolio;
use App\Models\CategoriaPortfolio;

class PortfolioController extends Controller
{
    public function adicionarPortfolio(Request $request)
    {
        $validated = $request->validate([
            'titulo' => 'required|string|max:255',
            'descricao' => 'required|string|max:20000',
            'categorias' => ['required', 'string', 'regex:/^[0-9]+(,[0-9]+)*$/'],
            'files' => 'required|array|min:1|max:10',
            'files.*' => 'required|image|mimes:jpg,jpeg,png,gif,webp|max:5120',
        ]);

        $categoryIds = array_values(array_unique(explode(',', $validated['categorias'])));
        $existingCategoryIds = DB::table('categoria_portfolios')
            ->whereIn('id', $categoryIds)
            ->pluck('id')
            ->map(function ($id) {
                return (string) $id;
            })
            ->all();

        if (count($existingCategoryIds) !== count($categoryIds)) {
            return response()->json(['message' => 'Uma ou mais categorias são inválidas.'], 422);
        }

        $safeDescription = $this->sanitizeDescription($validated['descricao']);
        $storedPaths = [];

        try {
            DB::transaction(function () use ($request, $validated, $categoryIds, $safeDescription, &$storedPaths) {
                $portfolio = new Portfolio();
                $portfolio->titulo = $validated['titulo'];
                $portfolio->descricao = $safeDescription;
                $portfolio->data = date('Y-m-d H:i:s');
                $portfolio->saveOrFail();

                $images = [];
                foreach ($request->file('files') as $file) {
                    $path = $file->store('portfolios', 'public');
                    $storedPaths[] = $path;
                    $images[] = [
                        'portfolio_id' => $portfolio->id,
                        'path' => $path,
                    ];
                }

                DB::table('portfolio_images')->insert($images);

                $categories = [];
                foreach ($categoryIds as $categoryId) {
                    $categories[] = [
                        'portfolio_id' => $portfolio->id,
                        'categoria_portfolio_id' => $categoryId,
                    ];
                }

                DB::table('categoria_portfolio__portfolios')->insert($categories);
            });
        } catch (\Throwable $exception) {
            Storage::disk('public')->delete($storedPaths);
            throw $exception;
        }

        return response()->json([
            'status' => true,
            'mensagem' => 'Portfólio adicionado com sucesso.',
            'portfolio' => $this->getPortfolio(),
        ], 201);
    }

    public function getCategorias()
    {
        $categories = CategoriaPortfolio::all();

        foreach ($categories as $category) {
            $category->nomeCategoria = DB::table('categoria_portfolios')
                ->where('id', $category->categoria_portfolio_id)
                ->value('titulo_categoria');
        }

        return $categories;
    }

    public function getPortfolio()
    {
        $portfolios = Portfolio::all()->sortBy('id')->values();

        foreach ($portfolios as $portfolio) {
            $portfolio->descricao = $this->sanitizeDescription($portfolio->descricao);
            $portfolio->imagens = DB::table('portfolio_images')
                ->where('portfolio_id', $portfolio->id)
                ->get();
            $portfolio->categorias = DB::table('categoria_portfolio__portfolios')
                ->where('portfolio_id', $portfolio->id)
                ->get();

            foreach ($portfolio->categorias as $category) {
                $category->nomeCategoria = DB::table('categoria_portfolios')
                    ->where('id', $category->categoria_portfolio_id)
                    ->value('titulo_categoria');
            }
        }

        return $portfolios;
    }

    public function getPortfolioId($id)
    {
        $portfolio = Portfolio::findOrFail($id);
        $portfolio->descricao = $this->sanitizeDescription($portfolio->descricao);
        $portfolio->imagens = DB::table('portfolio_images')
            ->where('portfolio_id', $portfolio->id)
            ->get();

        foreach ($portfolio->imagens as $image) {
            $image->path = asset('storage/' . $image->path);
        }

        $portfolio->categorias = DB::table('categoria_portfolio__portfolios')
            ->where('portfolio_id', $portfolio->id)
            ->get();

        foreach ($portfolio->categorias as $category) {
            $category->nomeCategoria = DB::table('categoria_portfolios')
                ->where('id', $category->categoria_portfolio_id)
                ->value('titulo_categoria');
        }

        return $portfolio;
    }

    private function sanitizeDescription($html)
    {
        $allowedTags = '<p><br><strong><b><em><i><u><ul><ol><li><blockquote><h2><h3><h4>';
        $clean = strip_tags((string) $html, $allowedTags);

        return preg_replace_callback(
            '/<(\/?)((?:p|br|strong|b|em|i|u|ul|ol|li|blockquote|h[2-4]))\b[^>]*>/i',
            function ($match) {
                return '<' . $match[1] . strtolower($match[2]) . '>';
            },
            $clean
        );
    }
}
