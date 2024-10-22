<?php

use App\Http\Controllers\Admin\Setting\HomepageSettingController;
use Illuminate\Support\Facades\Route;

Route::prefix('settings')->name('settings.')->group(function(){
    Route::controller(HomepageSettingController::class)->prefix('homepage')->name('homepage.')->group(function(){
        Route::get('/main-slider','mainSlider')->name('main_slider');
        Route::post('/main-slider','mainSliderStore')->name('main_slider_store');
        Route::get('/main-slider-delete/{id}','mainSliderDelete')->name('main_slider_delete');
        Route::get('/slider/update/status/{id}/{status}','updateSliderStatus');
        Route::get('/slider/{id}/edit','edit');
        Route::put('/slider/{id}','update');
        Route::delete('/slider/{id}','destroySlider');
    });
});