<?php

use App\Http\Controllers\FrontendControllers\CategoryDetailsContorller;
use App\Http\Controllers\FrontendControllers\HomeController;
use App\Http\Controllers\FrontendControllers\ProdcutController;
use App\Http\Controllers\FrontendControllers\SolutionController;
use Illuminate\Support\Facades\Route;

Route::get('/',HomeController::class)->name('index');


Route::controller(CategoryDetailsContorller::class)->name('frontend.')->group(function(){
    Route::get('/frontend/getCategoryDeatils','categoryDetails')->name('getCategoryDetails');
    Route::get('/frontend/getSolutionCategoryDeatils','solutionCategoryDetails')->name('getSolutionCategoryDetails');
    Route::get('/frontend/getSupportCategoryDeatils','supportCategoryDetails')->name('getSupportCategoryDetails');
    Route::get('/frontend/getPartnerCategoryDeatils','partnerCategoryDetails')->name('getPartnerCategoryDetails');
});


Route::controller(ProdcutController::class)->name('frontend.')->group(function(){
    Route::get('/products','index')->name('product');
    Route::get('/product/details/{product_id?}/{product_name?}','details')->name('product.details');
});


Route::controller(SolutionController::class)->name('frontend.')->group(function(){
    Route::get('/solutions','index')->name('solution');
});
