<?php

use App\Http\Controllers\Admin\Partner\CategoryController;
use App\Http\Controllers\Admin\Partner\ParentCategoryController;
use App\Http\Controllers\Admin\Partner\PartnerController;
use Illuminate\Support\Facades\Route;

//solution route
Route::prefix('partner')->name('partner.')->group(function () {
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

Route::resource('partner',PartnerController::class);
