<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CategoryBlogController;
use Illuminate\Support\Facades\Route;

Route::get('/', [BlogController::class, 'index'])->name('home');


Route::get('/about-us', [AboutController::class, 'show'])->name('about');

Route::prefix('category/{id}/')->group(function (){
    Route::controller(CategoryBlogController::class)->group(function (){
        Route::get('/asia', 'show')->name('category.asia');
        Route::get('/africa', 'show')->name('category.africa');
        Route::get('/europe', 'show')->name('category.europe');
        Route::get('/america', 'show')->name('category.america');
        Route::get('/wildlife-nature', 'show')->name('category.wildlife');
        Route::get('/historical-places', 'show')->name('category.historical');
        Route::get('/adventure', 'show')->name('category.adventure');
    });
});


// Route::view('/author/{id}', 'pages/author-page')->name('author.blogs');

Route::resource('/blogs', BlogController::class);
Route::resource('/authors', AuthorController::class);