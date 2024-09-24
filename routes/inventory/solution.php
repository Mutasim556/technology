<?php

use App\Http\Controllers\Admin\Solution\CategoryController;
use App\Http\Controllers\Admin\Solution\ParentCategoryController;
use App\Http\Controllers\Admin\Solution\SubCategoryController;
use Illuminate\Support\Facades\Route;

//solution route
Route::prefix('solution')->name('solution.')->group(function () {
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

   //sub category
   Route::resource('sub-category', SubCategoryController::class)->except('create', 'show');
   Route::controller(SubCategoryController::class)->prefix('sub-category')->group(function () {
      Route::get('/update/status/{id}/{status}', 'updateStatus');
   });
});