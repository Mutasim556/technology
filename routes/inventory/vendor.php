<?php

use App\Http\Controllers\Admin\Vendor\VendorController;
use Illuminate\Support\Facades\Route;

Route::resource('vendor', VendorController::class); 
