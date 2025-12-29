<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    public $timestamps = false;

    public function blogs(){
        return $this->hasMany(Blog::class);
    }
}
