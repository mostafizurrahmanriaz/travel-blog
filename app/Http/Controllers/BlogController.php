<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Blog;
use App\Models\Categories;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $blogs = Blog::with(['author', 'category'])->latest()->paginate(5);

        $first_blog = Blog::with('author')->with('category')->latest('created_at')->first();

        //recent blogs
        $recent_blogs = Blog::latest()->take(5)->get();

        //count category
        $count_category = Categories::withCount('blog')->get();

        // foreach ($blogs as $blog) {
        //     return $blog;
        // }

        return view('home', compact('blogs', 'first_blog', 'recent_blogs', 'count_category'));
        // return $first_blog;
 
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
       //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $blog = Blog::with('author')->find($id);
               //recent blogs
       $recent_blogs = Blog::latest()->take(5)->get();
        return view('single-blog', compact('blog', 'recent_blogs'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
