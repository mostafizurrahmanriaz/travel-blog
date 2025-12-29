<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function show(){
            //recent blogs
            $recent_blogs = Blog::latest()->take(5)->get();
            return view('pages/about-us', compact('recent_blogs'));
    }
}
