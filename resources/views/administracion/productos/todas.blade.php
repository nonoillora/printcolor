@extends('administracion/adminTemplate')
@section('titleAdmin')
    {{$title}}
@endsection
@section('adminContent')
    <div class="breadcrumb">Productos
        <div class="pull-right">
            @include('administracion/notificacionBreadcrumb')
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="list-group">
                @foreach($products as $product)
                    <div class="list-group-item">
                        <div class="row">
                            <div class="col-lg-3">
                                <img src="{{asset('storage/app/public/productos/'.$product->cover)}}"
                                     class="img-responsive"/>
                            </div>
                            <div class="col-lg-6">
                                <span class="vertical-align">{{$product->name}}</span>
                            </div>
                            <div class="col-lg-3">
                                <a href=""class="btn btn-primary">
                                    <span class="glyphicon glyphicon-wrench"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                @endforeach
                <div class="text-center">
                    {!! $products->links() !!}
                </div>
            </div>
        </div>
    </div>
@endsection