<?php

use App\Http\Controllers\PatientController;
use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Get All Resource
Route::get('/patients', [PatientController::class, 'index'])->middleware('auth:sanctum');

// Add Resource
Route::post('/patients', [PatientController::class, 'store'])->middleware('auth:sanctum');

// Get Detail Resource
Route::get('/patients/{id}', [PatientController::class, 'show'])->middleware('auth:sanctum');

// Edit Resource
Route::put('/patients/{id}', [PatientController::class, 'update'])->middleware('auth:sanctum');

// Delete Resource
Route::delete('/patients/{id}', [PatientController::class, 'destroy'])->middleware('auth:sanctum');

// Search Resource by name
Route::get('/patients/search/{name}', [PatientController::class, 'search'])->middleware('auth:sanctum');

// Get Positive Resource
Route::get('/patients/status/positive', [PatientController::class, 'positive'])->middleware('auth:sanctum');

// Get Recovered Resource
Route::get('/patients/status/recovered', [PatientController::class, 'recovered'])->middleware('auth:sanctum');

// Get Dead Resource
Route::get('/patients/status/dead', [PatientController::class, 'dead'])->middleware('auth:sanctum');

// Route Register & Login
Route::post('/register', [AuthController::class, 'register']);

Route::post('/login', [AuthController::class, 'login']);