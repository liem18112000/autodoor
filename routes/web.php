<?php

use Illuminate\Support\Facades\Route;

use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*
|--------------------------------------------------------------------------
| Home Routes
|--------------------------------------------------------------------------
*/

Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/admin/user/index', 'HomeController@userList')->name('admin.user.index')->middleware('auth')->middleware('register')->middleware('admin');

Route::get('/user/console', 'UserController@console')->name('user.console');

Route::post('/user/open/{device_id}', 'UserController@open')->name('user.open');

Route::get('/admin/track/index', 'TrackController@index')->name('admin.track.index')->middleware('auth')->middleware('register')->middleware('admin');



/*
|--------------------------------------------------------------------------
| Auth Routes
|--------------------------------------------------------------------------
*/

Auth::routes();




/*
|--------------------------------------------------------------------------
| ExcelRoutes
|--------------------------------------------------------------------------
*/

Route::get('/import',['as'=>'import','uses'=>'ExcelController@getImport']);

Route::post('/import',['as'=>'import','uses'=>'ExcelController@postImport']);

Route::get('/user/export', 'ExcelController@exportUser')->name('user.export');

Route::get('/employee/export', 'ExcelController@exportEmployee')->name('employee.export');



/*
|--------------------------------------------------------------------------
| Employee Routes
|--------------------------------------------------------------------------
*/

Route::get('/employees', 'EmployeeController@index')->name('employees.index');

Route::post('/employees', 'EmployeeController@store')->name('employees.store');

Route::get('/employees/create', 'EmployeeController@create')->name('employees.create');

Route::get('/employees/{employee}', 'EmployeeController@show')->name('employees.show');

Route::get('/employees/{employee}/edit', 'EmployeeController@edit')->name('employees.edit');

Route::put('/employees/{employee}', 'EmployeeController@update')->name('employees.update');

Route::delete('/employees/{employee}', 'EmployeeController@destroy')->name('employees.destroy');




/*
|--------------------------------------------------------------------------
| Card Routes
|--------------------------------------------------------------------------
*/

Route::get('/cards', 'CardController@index')->name('cards.index');

Route::get('/cards/create/{employee_id}', 'CardController@create')->name('cards.create');

Route::post('/cards/{employee_id}', 'CardController@store')->name('cards.store');

Route::get('/cards/{card}', 'CardController@show')->name('cards.show');

Route::get('/cards/{employee_id}/{card}/edit', 'CardController@edit')->name('cards.edit');

Route::put('/cards/{employee_id}/{card}', 'CardController@update')->name('cards.update');

Route::delete('/cards/{card}', 'CardController@destroy')->name('cards.destroy');



/*
|--------------------------------------------------------------------------
| Role Routes
|--------------------------------------------------------------------------
*/

Route::get('/roles', 'RoleController@index')->name('roles.index');

Route::get('/roles/create/{employee_id}', 'RoleController@create')->name('roles.create');

Route::post('/roles/{employee_id}', 'RoleController@store')->name('roles.store');

Route::get('/roles/{role}', 'RoleController@show')->name('roles.show');

Route::get('/roles/{employee_id}/{role}/edit', 'RoleController@edit')->name('roles.edit');

Route::put('/roles/{employee_id}/{role}', 'RoleController@update')->name('roles.update');

Route::delete('/roles/{role}', 'RoleController@destroy')->name('roles.destroy');



/*
|--------------------------------------------------------------------------
| Request Routes
|--------------------------------------------------------------------------
*/

Route::get('/admin/request', 'RequestController@index')->name('admin.request.index');

Route::get('/admin/request/new', 'RequestController@new')->name('admin.request.new');

Route::get('/admin/request/old', 'RequestController@old')->name('admin.request.old');

Route::get('/admin/request/accept/{userRequest}', 'RequestController@accept')->name('admin.request.accept');

Route::get('/admin/request/reject/{userRequest}', 'RequestController@reject')->name('admin.request.reject');