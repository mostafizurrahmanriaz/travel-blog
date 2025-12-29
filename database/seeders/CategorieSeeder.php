<?php

namespace Database\Seeders;

use App\Models\Categories;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\File;

class CategorieSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $json = File::get('database/json/categories.json');
        $categoreis = collect(json_decode($json));

        $categoreis->each(function($category){
            Categories::create([
                "name" => $category->name
            ]);
        });
    }
}
