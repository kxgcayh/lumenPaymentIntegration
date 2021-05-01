<?php

/** @var \Laravel\Lumen\Routing\Router $router */

use App\Http\Controllers\ProductController;

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

// Default Route
$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'api'], function () use ($router) {
    // Authentication
    $router->post('register', 'AuthController@register');
    $router->post('login', 'AuthController@login');
    $router->post('logout', 'AuthController@logout');
    // User
    $router->get('profile', 'UserController@profile');
    $router->get('users', 'UserController@index');
    $router->post('user', 'UserController@show');

    // Products Route
    $router->group(['prefix' => 'product'], function () use ($router) {
        $router->get('/', 'ProductController@index');
        $router->post('/create', 'ProductController@create');
        $router->get('/detail/{id}', 'ProductController@show');
        $router->post('/update', 'ProductController@update');
        $router->delete('/delete/{id}', 'ProductController@delete');
    });

    $router->group(['prefix' => 'order'], function () use ($router) {
        $router->get('/', 'OrderController@index');
        $router->post('/store', 'OrderController@postPayStripe');
    });
});
