@extends('administracion/adminTemplate')
@section('titleAdmin')
    {{$title}}
@endsection
@section('adminContent')
    <div class="breadcrumb">
        <a href="{{url('admin')}}">Administraci&oacute;n</a> <span class="glyphicon glyphicon-chevron-right"></span> <a href="{{url('admin/presupuestos')}}">Presupuestos</a>
        <div class="pull-right">
            @include('administracion/notificacionBreadcrumb')
        </div>
    </div>
    <div class="col-lg-12">

        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><b>{{$presupuestos->nombre}}</b> solicita <b>{{$presupuestos->name}}</b></h3>
            </div>
            <div class="panel-body">
                <b>{{$presupuestos->nombre}}</b> comenta:<br/>
                <div class="well">
                    {{$presupuestos->comentario}}
                </div>
                <span class="pull-right">Enviado el <b>{{date_format(date_create($presupuestos->created_at),'d/m/Y H:i:s')}}</b></span>
            </div>
        </div>
    </div>
@endsection