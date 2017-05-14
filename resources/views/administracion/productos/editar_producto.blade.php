@extends('administracion/adminTemplate')
@section('adminContent')
    <div class="breadcrumb"> Producto <span class="glyphicon glyphicon-chevron-right"></span> Editar
        <div class="pull-right">
            @include('administracion/notificacionBreadcrumb')
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="list-group">
                @foreach($products as $producto)
                    <div class="list-group-item">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                                @if(empty($producto->cover))
                                    <img src="{{asset('storage/app/public/image_not_found.jpg')}}" class="img-responsive img-rounded"></img>
                                @else
                                    <img src="{{asset('storage/app/public/productos/'.$producto->cover)}}"
                                         class="img-responsive" width="25%" height="25%"/>
                                @endif

                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                {{$producto->name}}
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                <a href="{{url('admin/producto/editar/'.$producto->id)}}"
                                   class="btn btn-primary center-block">
                                    <span class="glyphicon glyphicon-pencil"></span>&nbsp; Editar
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