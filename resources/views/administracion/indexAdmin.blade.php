@extends('administracion/adminTemplate')
@section('titleAdmin')
    {{$title}}
@endsection
@section('adminContent')
    <div class="breadcrumb">Administraci&oacute;n
        <div class="pull-right">
            @include('administracion/notificacionBreadcrumb')
        </div>
    </div>
    <div class="col-lg-12" style="overflow: auto">
        <div class="panel panel-info">
            <div class="panel-heading"><b>Novedades</b></div>
            <div class="panel-body text-center">
                <div class="col-lg-4">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-list-alt"></span></button>
                        <br/>1 Solicitud de Prespuesto
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <img src="{{asset('storage/app/public/newPedido.png')}}" class="img-responsive"
                                 width="22px" height="22px" style="margin: 0px -5px 3px 3px;"/>
                        </button>
                        <br/>2 Nuevos Pedidos

                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-warning">
                            <span class="glyphicon glyphicon-envelope"></span></button>
                        <br/>1 Nuevo Mensaje

                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="panel panel-info">
            <div class="panel-heading"><b>&Uacute;ltimos Pedidos</b></div>
            <ul class="list-group">
                @for($i=0;$i<7;$i++)
                    <li class="list-group-item">
                        {{$i+1}}
                        <span class="pull-right">{{$i+1*rand(0,700)}} &euro;</span>
                    </li>
                @endfor
            </ul>
            <br/>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="panel panel-info">
            <div class="panel-heading"><b>Ventas</b></div>
            <div class="panel-body text-center">
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-list-alt"></span></button>
                        <br/>Ver Ventas
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-danger">
                            <span class="glyphicon glyphicon-trash"></span></button>
                        <br/>Eliminar categor&iacute;a

                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-warning">
                            <span class="glyphicon glyphicon-pencil"></span></button>
                        <br/>Editar categor&iacute;a

                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="panel panel-info">
            <div class="panel-heading"><b>Categor&iacute;as</b></div>
            <div class="panel-body text-center">
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-info">
                            <span class="glyphicon glyphicon-list"></span></button>
                        <br/>Ver Categor&iacute;s
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                        <br/>A&ntilde;adir categor&iacute;a
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-danger">
                            <span class="glyphicon glyphicon-trash"></span></button>
                        <br/>Eliminar categor&iacute;a

                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-warning">
                            <span class="glyphicon glyphicon-pencil"></span></button>
                        <br/>Editar categor&iacute;a

                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="panel panel-info">
            <div class="panel-heading"><b>Productos</b></div>
            <div class="panel-body text-center">
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-info">
                            <span class="glyphicon glyphicon-list"></span></button>
                        <br/>Ver Productos
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                        <br/>A&ntilde;adir Producto
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-warning">
                            <span class="glyphicon glyphicon-pencil"></span></button>
                        <br/>Editar Producto
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-danger">
                            <span class="glyphicon glyphicon-trash"></span></button>
                        <br/>Eliminar Producto
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="panel panel-info">
            <div class="panel-heading"><b>Categor&iacute;as</b></div>
            <div class="panel-body text-center">
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-info">
                            <span class="glyphicon glyphicon-list"></span></button>
                        <br/>Ver Categor&iacute;as
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                        <br/>A&ntilde;adir categor&iacute;a
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-warning">
                            <span class="glyphicon glyphicon-pencil"></span></button>
                        <br/>Editar categor&iacute;a
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-danger">
                            <span class="glyphicon glyphicon-trash"></span></button>
                        <br/>Eliminar categor&iacute;a

                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="panel panel-info">
            <div class="panel-heading"><b>Ofertas</b></div>
            <div class="panel-body text-center">
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                        <br/>Ver Ofertas
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                        <br/>A&ntilde;adir Ofertas
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                        <br/>Editar Ofertas
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-danger">
                            <span class="glyphicon glyphicon-trash"></span></button>
                        <br/>Eliminar categor&iacute;a
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="panel panel-info">
            <div class="panel-heading"><b>Ofertas Inicio</b></div>
            <div class="panel-body text-center">
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                        <br/>Ver Ofertas
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                        <br/>A&ntilde;adir Ofertas
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-plus-sign"></span></button>
                        <br/>Editar Ofertas
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-danger">
                            <span class="glyphicon glyphicon-trash"></span></button>
                        <br/>Eliminar categor&iacute;a
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="panel panel-info">
            <div class="panel-heading"><b>Mensajes</b></div>
            <div class="panel-body text-center">
                <div class="col-lg-4">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-info">
                            <span class="glyphicon glyphicon-eye-open"></span></button>
                        <br/>Ver Mensajes
                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-success">
                            <span class="glyphicon glyphicon-send"></span></button>
                        <br/>Escribir Mensaje

                    </a>
                </div>
                <div class="col-lg-4">
                    <a href="" class="noUnderline">
                        <button class="btn-circle bt-xl btn btn-danger">
                            <span class="glyphicon glyphicon-trash"></span></button>
                        <br/>Borrar Mensajes
                    </a>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
@endsection
