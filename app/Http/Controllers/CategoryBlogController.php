<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Categories;
use Illuminate\Http\Request;

class CategoryBlogController extends Controller
{
    public function show(string  $id){
       $categories = Categories::find($id);
       $blogs =  $categories->blog()->latest()->paginate(5);

       $count_category = Categories::withCount('blog')->get();

       $first_blog = $categories->blog()->latest()->first();

       //recent blogs
       $recent_blogs = Blog::latest()->take(5)->get();

       return view('pages/category-page', compact('blogs', 'categories', 'first_blog', 'recent_blogs', 'count_category'));
    }
}
