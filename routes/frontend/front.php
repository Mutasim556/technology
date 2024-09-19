<?php

use App\Http\Controllers\FrontendControllers\HomeController;
use Illuminate\Support\Facades\Route;

Route::get('/',HomeController::class)->name('index');