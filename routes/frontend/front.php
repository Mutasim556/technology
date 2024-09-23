<?php

use App\Http\Controllers\FrontendControllers\CategoryDetailsContorller;
use App\Http\Controllers\FrontendControllers\HomeController;
use Illuminate\Support\Facades\Route;

Route::get('/',HomeController::class)->name('index');


Route::controller(CategoryDetailsContorller::class)->name('frontend.')->group(function(){
    Route::get('/frontend/getCategoryDeatils','categoryDetails')->name('getCategoryDetails');
});