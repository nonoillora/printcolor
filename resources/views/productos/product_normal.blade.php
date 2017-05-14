@extends('template')
@section('title')
    {{$title}}
@endsection
@section('content')
    <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
        @include('components/lateral',['id'=>$producto->idCategoria])
    </div>
    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcrumb">
                    <a href="{!! url('/') !!}"><span class="glyphicon glyphicon-home"></span> Inicio</a> <span
                            class="glyphicon glyphicon-menu-right"></span> <a
                            href="{!! url('categoria/'.$categoria->id.'/'.str_slug($categoria->name,'-')) !!}">{{$categoria->name}}</a>
                    <span class="glyphicon glyphicon-menu-right"></span> <a
                            href="{!! url('producto/'.$producto->id.'/'.str_slug($producto->name,'-')) !!}">{{$producto->name}}</a>
                </div>
                <div class="amarillo padding5">
                    <h3>{{$producto->name}}</h3>
                </div>
                @if($producto->image=='')
                    <img src="{!! asset('img/imageProduct.png') !!}" class="img-responsive center-block"/>
                @else
                    <img src="{!! asset('storage/app/public/productos/'.$producto->image) !!}" class="img-responsive center-block"/>
                @endif
                <br/>
                <div class="amarillo padding5">
                    <h3>Descripci&oacute;n</h3>
                </div>
                @include('components/informacion')
                {{--@include('precios/tarjetas_visita_simples')--}}
                @include('precios/table_precios')
                {{--form contacto--}}
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <br/>
                </div>
                {!! Form::open(['url'=>'save','method'=>'post','files'=>true,'class'=>'form']) !!}
                @include('productos/tarjetas_visita/form_tarjetas_visita')
                {{--@include('contact-form')--}}
                <button type="submit" class="btn btn-success center-block">A&ntilde;adir a cesta</button>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
@endsection