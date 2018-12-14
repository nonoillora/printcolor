<?php

namespace App\Http\Controllers;

use App\Presupuesto;
use App\PriceProduct;
use Illuminate\Http\Request;
use DB;
use HelperProduct;
use Cart;
use App\Category;
use Storage;
use Illuminate\Http\File;
use App\Producto;
use App\TypePriceProduct;

class ProductoController extends Controller
{
    protected $helperProduct;

    function __construct(HelperProduct $hp)
    {
        $this->helperProduct = $hp;
    }

    public function getProducto(Request $request)
    {
        $categorias = DB::table('categories')->select('*')->get();
        $product = DB::table('productos')->select('*')->where('id', $request->id)->first();
        if (!isset($product)|| $product == [] || $product == null) {
            abort('404');
        } else {
            $category = DB::table('categories')->select('name', 'id')->where('id', $product->idCategoria)->first();
            if ($this->helperProduct->esPresupuesto($product->idCategoria)) {
                return view('productos/presupuesto', ['id' => $request->id,
                    'categoria' => $category,
                    'producto' => $product,
                    'title' => $product->name,
                    'cart' => Cart::content(),
                    'categorias' => $categorias]);
            } else {
                $typePrice = DB::table('type_price_products')->select('nameTypePrice', 'id')->where(['idProduct' => $product->id])->get();
                $prices = DB::Table('price_products')
                    ->select('price', 'count', 'idTypePriceProduct', 'price_products.id')
                    ->join('type_price_products', 'price_products.idTypePriceProduct', '=', 'type_price_products.id')
                    ->join('productos', 'type_price_products.idProduct', '=', 'productos.id')
                    ->where(['productos.id' => $product->id])->orderBy('count', 'asc')->get();
                $tipoSelect = [];
                foreach ($typePrice as $type) {
                    $tipoSelect[$type->id] = $type->nameTypePrice;
                    $sameType = [];
                    foreach ($prices as $price) {
                        if ($price->idTypePriceProduct == $type->id) {
                            array_push($sameType, $price);
                        }
                    }
                    $type->prices = $sameType;
                }
                switch ($product->id) {
                    case 4:/*es presupuesto */
                        return view('productos/tarjetaPlasticaPresupuesto', ['id' => $request->id,
                            'categoria' => $category,
                            'producto' => $product,
                            'title' => $product->name,
                            'cart' => Cart::content(),
                            'categorias' => $categorias]);
                        break;
                    case 39:
                        return view('productos/documentoOnline', ['id' => $request->id,
                            'categoria' => $category,
                            'producto' => $product,
                            'title' => $product->name,
                            'cart' => Cart::content(),
                            'categorias' => $categorias]);
                        break;
                    case 31:
                        return view('productos/viniloCortePresupuesto', ['id' => $request->id,
                        'categoria' => $category,
                        'producto' => $product,
                        'title' => $product->name,
                        'cart' => Cart::content(),
                        'categorias' => $categorias]);
                    default:
                        return view('productos/product_normal', ['id' => $request->id,
                            'categoria' => $category,
                            'producto' => $product,
                            'title' => $product->name,
                            'cart' => Cart::content(),
                            'categorias' => $categorias,
                            'typePrice' => $typePrice,]);
                    break;
                }
            }
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('administracion/productos/todas', ['title' => 'Productos', 'products' => DB::table('productos')->select('name', 'cover')->paginate(10)]);
    }

    public function getNuevoProducto()
    {
        $categorias = Category::pluck('name', 'id');
        return view('administracion/productos/nuevo_producto', [
            'title' => 'Nueva Producto',
            'categories' => $categorias,
        ]);

    }

    public function getBorrarProducto($id = null)
    {
        if ($id != null) {
            $isBudget = $this->helperProduct->esPresupuesto($id);
            if (!$isBudget) {
                $typePriceProducts = DB::table('type_price_products')->select('id')->where(['idProduct' => $id])->get();
                $totalTypePricesProductToRemove = count($typePriceProducts);
                $totalPricesToRemove = 0;
                $confirmDeleteTypePrice = 0;
                $confirmDeletePrice = 0;
                foreach ($typePriceProducts as $typePriceProduct) {
                    $prices = DB::table('price_products')->select('id')->where(['idTypePriceProduct' => $typePriceProduct->id])->get();
                    $totalPricesToRemove += count($prices);
                    foreach ($prices as $price) {
                        $confirmDeletePrice += PriceProduct::destroy($price->id);
                    }
                    $confirmDeleteTypePrice += TypePriceProduct::destroy($typePriceProduct->id);
                }
                if ($totalTypePricesProductToRemove == $confirmDeleteTypePrice && $totalPricesToRemove == $confirmDeletePrice) {
                    $images = DB::table('productos')->select('cover', 'image')->where(['id' => $id])->first();
                    $dir = 'public/productos/';
                    $removeImages = Storage::delete([$dir . $images->cover, $dir . $images->image]);
                    if (!$removeImages) {
                        return redirect()->to('admin/producto/borrar')->with(['failProduct' => 'Fallo al borrar la imagenes asociadas al producto']);
                    }
                } else {
                    return redirect()->to('admin/producto/borrar')->width(['failProduct' => 'Fallo al borrar los precios y acabados asociados con el producto']);
                }
            }
            $remove = Producto::destroy($id);
            if ($remove == 1) {
                return redirect()->to('admin/producto/borrar')->with(['successProduct' => 'Producto borrado satisfactoriamente']);
            } else {
                return redirect()->to('admin/producto/borrar')->with(['failProduct' => 'Fallo al borrar el producto']);
            }
        } else {
            return view('administracion/productos/eliminar_producto', ['title' => 'Editar Categor&iacute;as',
                'products' => DB::table('productos')->select('name', 'cover', 'id')->paginate(17)]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public
    function newpresupuesto(Request $request)
    {
        $presupuesto = new Presupuesto($request->all());
        $status = $presupuesto->save();
        if ($status) {
            return redirect()->back()->with('presupuestoOK', '');
        } else {
            return redirect()->back()->withErrors();
        }
    }

    public
    function saveNewProduct(Request $request)
    {
        $mycover = Storage::putFile('public/productos', new File($request->file('cover')));
        $myimage = Storage::putFile('public/productos', new File($request->file('inside')));
        $prod = New Producto([
            'idCategoria' => $request->get('idCategoria'),
            'name' => $request->get('nombre'),
            'cover' => str_replace('public/productos/', '', $mycover),
            'image' => str_replace('public/productos/', '', $myimage),
            'description' => $request->get('descripcion')
        ]);
        $status = $prod->save();
        if ($status) {
            return back()->with('successNewProduct', 'Nuevo producto creado');
        } else {
            return back()->withErrors();
        }
    }


    public
    function saveeditprod(Request $request)
    {
        $mycover = Storage::putFile('public/productos', new File($request->file('cover')));
        $cat = Category::find($request->get('id'));
        $cat->name = $request->get('nombre');
        $cat->name_xs = $request->get('nombreBreve');
        $cat->image = str_replace('public/productos/', '', $mycover);
        $status = $cat->save();
        if ($status) {
            return back()->with('successEditProduct', 'Producto actualizado correctamente');

        } else {
            return back()->withErrors();

        }

    }


    public
    function getEditarProducto()
    {
        return view('administracion/productos/editar_producto',
            [
                'title' => 'Editar Categor&iacute;as',
                'products' => DB::table('productos')->select('name', 'cover', 'id')->paginate(17)
            ]);
    }

    public
    function getEditarProductWithId($id)
    {
        $producto = DB::table('productos')->select('*')->where(['id' => $id])->first();
        $typePrice = DB::table('type_price_products')->select('nameTypePrice', 'id')->where(['idProduct' => $id])->get();
        $prices = DB::Table('price_products')
            ->select('price', 'count', 'idTypePriceProduct', 'price_products.id')
            ->join('type_price_products', 'price_products.idTypePriceProduct', '=', 'type_price_products.id')
            ->join('productos', 'type_price_products.idProduct', '=', 'productos.id')
            ->where(['productos.id' => $id])->orderBy('count', 'asc')->get();
        $tipoSelect = [];
        foreach ($typePrice as $type) {
            $tipoSelect[$type->id] = $type->nameTypePrice;
            $sameType = [];
            foreach ($prices as $price) {
                if ($price->idTypePriceProduct == $type->id) {
                    array_push($sameType, $price);
                }
            }
            $type->prices = $sameType;
        }
        return view('administracion/productos/editar_producto_id',
            [
                'tipoSelect' => $tipoSelect,
                'typePrice' => $typePrice,
                'title' => 'Editar ' . $producto->name,
                'producto' => $producto
            ]);
    }

    public
    function removeImageFromProduct($id, $image)
    {
        $successDeleteFile = Storage::delete('public/productos/' . $image);
        if ($successDeleteFile) {
            $product = Producto::find($id);
            $product->image = '';
            $status = $product->save();
            if ($status) {
                return redirect()->back()->with('successDeleteImageProduct', 'Se ha eliminado correctamente la imagen');
            } else {
                return redirect()->back()->withErrors();
            }
        } else {
            return redirect()->back()->withErrors();
        }
    }

    public function deletePrice(Request $request)
    {
        $status = PriceProduct::destroy($request->get('idPrice'));
        if ($status == 1) {
            return response()->json(['exist' => true]);
        } else {
            return response()->json(['exist' => false]);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function addNewPrice(Request $request)
    {
        $dataPrice = $request->get('price');
        $dataCount = $request->get('count');
        $dataType = $request->get('typePriceProduct');
        $price = new PriceProduct(['idTypePriceProduct' => $dataType, 'price' => $dataPrice, 'count' => $dataCount]);
        $status = $price->save();
        if ($status) {
            return response()->json(['success' => true]);
        } else {
            return response()->json(['success' => false]);
        }
    }

    public function addNewTypePriceProduct(Request $request)
    {
        $nameTypePrice = $request->get('nameTypePrice');
        $idProduct = $request->get('idProduct');
        $type = new TypePriceProduct(['nameTypePrice' => $nameTypePrice, 'idProduct' => $idProduct]);
        $status = $type->save();
        if ($status) {
            return response()->json(['success' => true]);
        } else {
            return response()->json(['success' => false]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    public function editPriceProduct(Request $request)
    {
        $price = PriceProduct::find($request->get('idPriceProduct'));
        $price->count = $request->get('count');
        $price->price = $request->get('price');
        $price->idTypePriceProduct = $request->get('idTypePriceProduct');
        $status = $price->save();
        if ($status) {
            return response()->json(['exist' => true]);
        } else {
            return response()->json(['exist' => false]);
        }

    }

    public
    function editNameTypePriceProduct(Request $request)
    {
        $type = TypePriceProduct::find($request->get('idTypeProductPrice'));
        $type->nameTypePrice = $request->get('name');
        $status = $type->save();
        if ($status) {
            return response()->json(['exist' => true]);
        } else {
            return response()->json(['exist' => false]);
        }

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public
    function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public
    function destroy($id)
    {
        //
    }

    public
    function deleteTypePriceProduct(Request $request)
    {
        $id = $request->get('idTypeProductPrice');
        $prices = DB::table('price_products')->select('id')->where('idTypePriceProduct', $id)->get();
        $toDelete = [];
        foreach ($prices as $price) {
            array_push($toDelete, $price->id);
        }
        $total = PriceProduct::destroy($toDelete);
        if ($total == count($prices) || count($prices) == 0) {
            $status = TypePriceProduct::destroy($id);
            if ($status == 1) {
                return response()->json(['exist' => true]);
            } else {
                return response()->json(['exist' => false]);
            }
        } else {
            return response()->json(['info' => 'algo salio mal']);
        }
    }
}
