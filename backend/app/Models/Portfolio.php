<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    public function portofolioImagens(){
        return $this->hasMany('App\Models\PortfolioImagens', 'id');
    }
}
