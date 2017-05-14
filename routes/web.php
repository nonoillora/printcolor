<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', 'MainController@index');
Route::get('nosotros', 'MainController@getNosotros');
Route::get('plantillas', 'MainController@getPlantillas');
Route::get('subirficheros', 'MainController@getSubirFicheros');
Route::get('ofertas', 'MainController@getOfertas');
Route::get('categoria/{id}/{name?}', 'CategoriaController@getCategory');
Route::get('categorias', 'MainController@index');
Route::get('faq', 'MainController@getFAQ');
Route::get('producto/{id}/{name?}', 'ProductoController@getProducto');
Route::get('cookies', 'MainController@getCookies');
Route::get('image/banner', 'MainController@getBanner');
Route::get('image/categoria/{image}', 'CategoriaController@getCover');
Route::post('save', 'CategoriaController@getTest');
Route::post('newmessage', 'MainController@saveMessage');
Route::post('newpresupuesto', 'ProductoController@newpresupuesto');


Auth::routes();

Route::get('logout', function () {
    Auth::logout();
    return redirect()->to('/');
});
Route::get('/home', 'HomeController@index');

Route::group(['middleware' => 'auth', 'prefix' => 'admin'], function () {
    Route::get('/', 'MainController@getAdmin');
    Route::group(['prefix' => 'pedidos'], function () {
        Route::get('/', 'PedidoController@listadoPedidos');
        Route::get('pendientes', 'PedidoController@pedidosPendientes');
    });
    Route::group(['prefix' => 'presupuestos'], function () {
        Route::get('/', 'PresupuestoController@listadoPresupuestos');
        Route::get('{id}', 'PresupuestoController@mostrarPresupuesto');
    });

    Route::group(['prefix' => 'categoria'], function () {
        Route::get('nueva', 'CategoriaController@getNuevaCategoria');
        Route::post('savenewcat', 'CategoriaController@saveNewCat');
        Route::get('/', 'CategoriaController@getTodasCategoria');
        Route::get('editar', 'CategoriaController@getEditarCategoria');
        Route::get('editar/{id}', 'CategoriaController@getEditarCategoriaWithId');
        Route::get('remove/{id}/{image}', 'CategoriaController@removeImageFromCategory');
        Route::post('saveeditcat', 'CategoriaController@saveeditcat');
    });

    Route::group(['prefix' => 'producto'], function () {
        Route::get('nuevo', 'ProductoController@getNuevoProducto');
        Route::post('savenewprod', 'ProductoController@saveNewProduct');
        Route::get('/', 'ProductoController@index');
        Route::get('editar', 'ProductoController@getEditarProducto');
        Route::get('editar/{id}', 'ProductoController@getEditarProductWithId');
        Route::get('remove/{id}/{image}', 'ProductoController@removeImageFromProduct');
        Route::post('saveeditprod', 'ProductoController@saveeditprod');
        Route::post('addNewPrice', 'ProductoController@addNewPrice');
        Route::post('addNewTypePriceProduct', 'ProductoController@addNewTypePriceProduct');
        Route::post('deletePrice','ProductoController@deletePrice');
        Route::post('editPriceProduct','ProductoController@editPriceProduct');
        Route::post('editNameTypePriceProduct','ProductoController@editNameTypePriceProduct');
        Route::post('deleteTypePriceProduct','ProductoController@deleteTypePriceProduct');
        Route::get('borrar/{id?}','ProductoController@getBorrarProducto');
    });
});

Route::group([], function () {
    Route::get('cesta', 'CarroController@getIndex');
    Route::get('quitarProducto/{id}', 'CarroController@quitarProducto');
    Route::get('clearCart', 'CarroController@destroyCart');
    Route::get('confirmacion-pedido', 'PedidoController@getRegistroClientePedido');
    Route::get('realizar-pago-pedido','PedidoController@getrealizarPagoPedido');
    Route::post('pedido-finalizado','PedidoController@getPedidoFinalizado');
});