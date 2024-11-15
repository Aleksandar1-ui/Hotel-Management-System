<?php

use App\Http\Controllers\Api\CustomerController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::prefix('customer')->group(function () {
    Route::get('/{id}', [CustomerController::class, 'get'])->name('Get Customer');
});
