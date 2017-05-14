<?php

namespace App\Http\Controllers;

use App\Contacto;
use App\Http\Requests\ContactoRequest;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Session;
use Storage;
use Cart;

class MainController extends Controller
{
    public function index()
    {
        Cart::destroy();
        Cart::add(array('id' => 1, 'name' => 'tarjeta', 'qty' => 1, 'price' => '4','options'=>['color'=>'black', 'personalizado'=>true]));
        Cart::add(array('id' => 2, 'name' => 'taza personalizada', 'qty' => 1, 'price' => '14'));
        Cart::add(array('id' => 6, 'name' => 'Cojin personalizada', 'qty' => 1, 'price' => '10'));
        Cart::add(array('id' => 8, 'name' => 'Boli personalizada', 'qty' => 1, 'price' => '1.8'));
        Cart::add(array('id' => 9, 'name' => 'Boli personalizada', 'qty' => 1, 'price' => '1.8'));
        return view('index', ['categorias' => DB::table('categories')->select('*')->get(),'title'=> 'Impresi&oacute;n r&aacute;pida y segura','cart'=>Cart::content()]);
    }


    public function getFAQ()
    {

        return view('faq',['title'=> 'Preguntas Frecuentes','cart'=>Cart::content()]);
    }

    public function getNosotros()
    {
        return view('nosotros',['title'=> 'Conocenos','cart'=>Cart::content()]);
    }

    public function getOfertas()
    {
        return view('ofertas',['title'=> 'Ofertas','cart'=>Cart::content()]);
    }

    public function getCookies()
    {
        return view('cookies',['title'=> 'Cookies','cart'=>Cart::content()]);
    }

    public function getBanner()
    {
        $url = storage_path().'/app/public/prueba_1.jpg';
        if (Storage::disk('public')->exists('prueba_1.jpg')) {
            return response()->download($url);
        }
    }
    public function saveMessage(ContactoRequest $request){
        $mensaje = new Contacto($request->all());
        $mensaje->save();
        Session::flash('messageOK', '');
        return redirect()->back();
    }
    public function getPlantillas()
    {
        return view('plantillas', ['title' => 'Plantillas','cart'=>Cart::content()]);
    }
    public function getSubirFicheros()
    {
        return view('subidaFicherosExterna', ['title' => 'Subida De Ficheros','cart'=>Cart::content()]);
    }
    public function getAdmin(){
        return view('administracion/indexAdmin',['title'=>'Administraci&oacute;n']);
    }

}