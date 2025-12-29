<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    public $timestamps = false;
    public function blog(){
        return $this->belongsToMany(Blog::class, 'category_blog');
    }
}
