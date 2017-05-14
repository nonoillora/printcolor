@extends('template')
@section('title')
    {{$title}}
@endsection
@section('content')
    <div class="breadcrumbs">
        <ol class="breadcrumb">
            <li>
                <a href="{{url('/')}}">Inicio</a>
                <span class="glyphicon glyphicon-chevron-right"></span>
                <a href="{{url('mi-compra')}}">Mi Compra</a>
            </li>
        </ol>
    </div>
    @if(Session::has('cartDestroy'))
        <div class="alert alert-success">
            {{Session::get('cartDestroy')}}
        </div>
    @endif
    <div class="table-responsive">
        @if(count($cart))
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td class="image">Item</td>
                    <td class="description">Descripci&oacute;n</td>
                    <td class="price">Precio</td>
                    <td class="quantity">Cantidad</td>
                    <td class="total">Total</td>
                    <td class="options">Opciones</td>
                </tr>
                </thead>
                <tbody>
                @foreach($cart as $item)
                    <tr>
                        <td class="cart_product">
                            <a href=""><img src="images/cart/one.png" alt=""></a>
                        </td>
                        <td class="cart_description">
                            <h4><a href="">{{$item->name}}</a></h4>

                            <p>Web ID: {{$item->id}}</p>
                            @if(count($item->options)>0)
                                @foreach($item->options as $option)
                                    {{$option}}<br/>
                                @endforeach
                            @else
                                {{$item->options->color}}
                            @endif
                        </td>
                        <td class="cart_price">
                            <p>{{$item->price}}&euro;</p>
                        </td>
                        <td class="cart_quantity">
                            <div class="cart_quantity_button">
                                <span>{{$item->qty}}</span>
                            </div>
                        </td>
                        <td class="cart_total">
                            <p class="cart_total_price">{{$item->subtotal}}&euro;</p>
                        </td>
                        <td class="cart_delete">
                            <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
                        </td>
                        <td>
                            <a href="{{url('quitarProducto/'.$item->rowId)}}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> </a>
                        </td>
                    </tr>
                @endforeach
                @else
                    <p><h3>Su cesta se encuentra vac&iacute;a</h3></p>
                @endif
                </tbody>
            </table>
    </div>

    <section id="do_action">
        <div class="row">
            <div class="col-sm-6">
                <div class="total_area">
                    <ul>
                        <li>Cart Sub Total <span>$59</span></li>
                        <li>Gastos de envio <span>5&euro;</span></li>
                        <li>Gastos de gesti&oacute;n <span>Gratuitos</span></li>
                        <li>Total <span>{{Cart::total()}}&euro;</span></li>
                    </ul>
                    <a class="btn btn-warning" href="{{url('clearCart')}}"><span class="glyphicon glyphicon-shopping-cart"></span> Vaciar Cesta</a>
                    <a class="btn btn-success pull-r" href="{{url('confirmacion-pedido')}}">Continuar</a>
                </div>
            </div>
        </div>
    </section><!--/#do_action-->
@endsection