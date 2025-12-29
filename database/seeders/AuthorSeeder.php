<?php

namespace Database\Seeders;

use App\Models\Author;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\File;

class AuthorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $json = File::get('database/json/authors.json');
        $authors = collect(json_decode($json));

        $authors->each(function($author){
            Author::create([
                "name" => $author->name,
                "bio" => $author->bio,
                "photo" => $author->photo,
            ]);
        });
    }
}
