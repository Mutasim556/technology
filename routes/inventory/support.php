<?php

use App\Http\Controllers\Admin\Support\CategoryController;
use App\Http\Controllers\Admin\Support\ParentCategoryController;
use App\Http\Controllers\Admin\Support\SupportController;
use Illuminate\Support\Facades\Route;

//solution route
Route::prefix('support')->name('support.')->group(function () {
    //parent category
    Route::resource('parent-category', ParentCategoryController::class)->except('create', 'show');
    Route::controller(ParentCategoryController::class)->prefix('parent-category')->group(function () {
       Route::get('/update/status/{id}/{status}', 'updateStatus');
    });

    //category
   Route::resource('category', CategoryController::class)->except('create', 'show');
   Route::controller(CategoryController::class)->prefix('category')->group(function () {
      Route::get('/update/status/{id}/{status}', 'updateStatus');
      Route::get('/get/category-details/{id}/{target}', 'getCategoryDetails');
   });
});

Route::resource('support',SupportController::class);
Route::get('/support-details',[SupportController::class,'solutionDetails']);

