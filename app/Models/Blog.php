<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    // public $timestamps = false;
    protected $guarded = [];

    public function author(){
        return $this->belongsTo(Author::class);
    }
    public function category(){
        return $this->belongsToMany(Categories::class, 'category_blog');
    }
}
