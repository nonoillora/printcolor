<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use DB;
use Storage;
use Cart;
use Illuminate\Http\File;

class CategoriaController extends Controller
{
    public function getCategory(Request $request)
    {
        $category = DB::table('categories')->select('name')->where('id', $request->id)->first();
        if (count($category) == 0) {
            abort('404');
        }
        $categorias = DB::table('categories')->select('*')->get();
        $products = DB::table('productos')->select('*')->where('idCategoria', $request->id)->get();
        if (count($products) == 1) {
            return redirect('producto/' . $products->first()->id . '/' . str_slug($products->first()->name, '-'));
        } else {
            return view('category', ['id' => $request->id,
                'name' => $category->name,
                'productos' => $products,
                'title' => $category->name,
                'cart' => Cart::content(),
            'categorias'=>$categorias]);
        }
    }

    public function getCover($image)
    {
        $url = storage_path() . '/app/public/categoria/' . $image;
        if (Storage::disk('public')->exists('categoria/' . $image)) {
            return response()->download($url);
        }
    }

    public function getTest(Request $request)
    {

        if ($request->isEmpresa == "on") {
            dd('hey');
        } else {

        }
        $request->file('imagen1')->store('public');
        dd($request->imagen1);
    }

    public function getNuevaCategoria()
    {
        return view('administracion/categorias/nueva_categoria', ['title' => 'Nueva Categor&iacute;a']);
    }

    public function getTodasCategoria()
    {
        return view('administracion/categorias/todas', ['title' => 'Categor&iacute;a', 'categories' => DB::table('categories')->select('name', 'image')->paginate(10)]);
    }

    public function saveNewCat(Request $request)
    {
        $mycover = Storage::putFile('public/categoria', new File($request->file('cover')));
        $cat = New Category(['name' => $request->get('nombre'), 'name_xs' => $request->get('nombreBreve'), 'image' => str_replace('public/categoria/', '', $mycover)]);
        $status = $cat->save();
        return back()->with('successNewCategory', 'Nueva categor&iacute;a creada');

    }

    public function saveeditcat(Request $request)
    {
        $mycover = Storage::putFile('public/categoria', new File($request->file('cover')));
        $cat = Category::find($request->get('id'));
        $cat->name = $request->get('nombre');
        $cat->name_xs = $request->get('nombreBreve');
        $cat->image = str_replace('public/categoria/', '', $mycover);
        $status = $cat->save();
        if ($status) {
            return back()->with('successEditCategory', 'Categor&iacute;a actualizada correctamente');

        } else {
            return back()->withErrors();

        }

    }


    public function getEditarCategoria()
    {
        return view('administracion/categorias/editar_categoria',
            [
                'title' => 'Editar Categor&iacute;as',
                'categories' => DB::table('categories')->select('name', 'image', 'id')->paginate(17)
            ]);
    }

    public function getEditarCategoriaWithId($id)
    {
        $categoria = DB::table('categories')->select('*')->where(['id' => $id])->first();

        return view('administracion/categorias/editar_categoria_id',
            [
                'title' => 'Editar ' . $categoria->name,
                'categoria' => $categoria
            ]);
    }

    public function removeImageFromCategory($id, $image)
    {
        $successDeleteFile = Storage::delete('public/categoria/' . $image);
        if ($successDeleteFile) {
            $category = Category::find($id);
            $category->image = '';
            $status = $category->save();
            if ($status) {
                return redirect()->back()->with('successDeleteImageCategory', 'Se ha eliminado correctamente la imagen');
            } else {
                return redirect()->back()->withErrors();
            }
        } else {
            return redirect()->back()->withErrors();
        }


    }
}
