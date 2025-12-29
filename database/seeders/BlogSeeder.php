<?php

namespace Database\Seeders;

use App\Models\Blog;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\File;

class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $json = File::get('database/json/blogs.json');
        $blogs = collect(json_decode($json));

        $blogs->each(function($blog){
            Blog::create([
                "title" => $blog->title,
                "content_1" => $blog->content_1,
                "content_2" => $blog->content_2,
                "featured_image" => $blog->featured_image,
                "category" => $blog->category,
                "author_id" => $blog->author_id,
                "created_at" => now()->subDays(10),
                "updated_at" => now()->subDays(10)
            ]);
        });
    }
}
