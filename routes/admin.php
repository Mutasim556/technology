<?php

use App\Http\Controllers\Admin\Auth\AdminAuthController;
use App\Http\Controllers\Admin\Auth\AdminLoginController;
use App\Http\Controllers\Admin\Localization\BackendLanguageController;
use App\Http\Controllers\Admin\Localization\ChangeLanguageController;
use App\Http\Controllers\Admin\Localization\LanguageController;
use App\Http\Controllers\Admin\Role\RoleAndPermissionController;
use App\Http\Controllers\Admin\Setting\WarehouseController;
use App\Http\Controllers\Admin\Settings\MaintenanceModeController;
use App\Http\Controllers\Admin\User\UserController;
use Illuminate\Support\Facades\Route;


Route::prefix('admin')->name('admin.')->group(function(){
    Route::controller(AdminAuthController::class)->group(function(){
        Route::post('/forget-password','forgetPassword')->name('forget_password');
        Route::get('/reset-password','resetPasswordIndex')->name('reset_password');
        Route::post('/reset-password','resetPasswordUpdate')->name('reset_password');
    });
    Route::controller(AdminLoginController::class)->group(function(){
        Route::get('/login','login')->name('login');
        Route::post('/login','handleLogin')->name('login');
        Route::get('/logout','handleLogout')->name('logout');
        Route::get('/dashboard','index')->name('index')->middleware('admin','adminStatusCheck');
        Route::get('/admin-profile','adminProfile')->name('profile')->middleware('admin','adminStatusCheck');
        Route::post('/update-basic-info','updateBasicInfo')->name('basicInfo')->middleware('admin','adminStatusCheck');
        Route::post('/update-password','updatePassword')->name('update_basic_info')->middleware('admin','adminStatusCheck');
    });

    Route::middleware('admin','adminStatusCheck')->group(function(){
        //user routes
        Route::resource('user',UserController::class)->except(['craete','show']);
        Route::controller(UserController::class)->name('user.')->prefix('user')->group(function () {
            Route::get('/update/status/{id}/{status}', 'updateStatus')->name('user_status');
        });

        //roles and permissions
        Route::resource('role',RoleAndPermissionController::class)->except(['craete','show']);
        Route::controller(RoleAndPermissionController::class)->name('role.')->prefix('role')->group(function () {
            Route::get('/get-user-permissions/{id}','getUserPermission')->name('getUserPermission');
            Route::post('/give-user-permissions','giveUserPermission')->name('giveUserPermission');
        });

        //language controller 
        Route::resource('language',LanguageController::class)->except(['craete','show']);
        Route::controller(LanguageController::class)->name('language.')->prefix('language')->group(function () {
            Route::get('/update/status/{id}/{status}', 'updateStatus')->name('language_status');
        });

        //backend language controller 
        Route::resource('backend/language',BackendLanguageController::class,['as'=>'backend'])->except(['craete','show','edit','distroy']);
        Route::controller(BackendLanguageController::class)->name('backend.language.')->prefix('backend/language')->group(function () {
            Route::post('/store/translate/string', 'storeTranslateString')->name('storeTranslateString');
            Route::post('/store/apikey', 'storeApikey')->name('storeApikey');
        });
        Route::get('/change/language/{lang}',ChangeLanguageController::class)->name('changeLanguage');

        //settings
        Route::prefix('settings')->name('settings.')->group(function(){
            Route::get('/maintenance-mode',[MaintenanceModeController::class,'maintenanceMode'])->name('server.maintenanceMode');
            Route::post('/maintenance-mode-on',[MaintenanceModeController::class,'maintenanceModeOn'])->name('server.maintenanceModeOn');
            // Route::get('/server/down',[MaintenanceModeController::class,'down'])->name('server.down');
            Route::get('/server/up',[MaintenanceModeController::class,'up'])->name('server.up');
            Route::get('/secret-code/delete/{id}',[MaintenanceModeController::class,'destroy'])->name('secret-code.delete');
            Route::get('/secret-code/delete-all',[MaintenanceModeController::class,'destroyAll'])->name('secret-code.delete-all');

            Route::resource('warehouse',WarehouseController::class)->except(['craete','show']);
            Route::controller(WarehouseController::class)->name('warehouse.')->prefix('warehouse')->group(function () {
                Route::get('/update/status/{id}/{status}', 'updateStatus');
            });
        });

        //products
        require __DIR__.'/inventory/product.php';
        require __DIR__.'/inventory/solution.php';
        require __DIR__.'/inventory/support.php';
        require __DIR__.'/inventory/partners.php';
    });


    
});
