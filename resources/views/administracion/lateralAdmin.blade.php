<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-info">
        <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                   aria-expanded="true" aria-controls="collapseOne" class="noUnderline">
                    <b>Pedidos</b>
                </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
             aria-labelledby="headingOne">
            <ul class="list-group">
                <a href="{{url('admin/pedidos')}}"
                   class="list-group-item noUnderline @if(Request::segment(2)=='pedidos' && Request::segment(3)=='') active @endif">&Uacute;ltimos
                    Pedidos
                </a>
                <a class="list-group-item noUnderline">Ver Todos</a>
                <a href="{{url('admin/presupuestos')}}"
                   class="list-group-item noUnderline @if(Request::segment(2)=='presupuestos') active @endif">
                    Presupuestos
                </a>
                <a a href="{{url('admin/pedidos/pendientes')}}"
                   class="list-group-item noUnderline @if(Request::segment(3)=='pendientes' && Request::segment(2)=='pedidos') active @endif">
                    Pedidos Pedientes
                </a>
                <li class="list-group-item">Pedidos Enviados</li>
                <li class="list-group-item">Pedidos Sin Pagar</li>
            </ul>
        </div>
    </div>
    <br/>

    <div class="panel panel-info">
        <div class="panel-heading" role="tab" id="headingTwo">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"
                   aria-expanded="true" aria-controls="collapseTwo">
                    <b>Categor&iacute;as</b>
                </a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel"
             aria-labelledby="headingTwo">
            <ul class="list-group">
                <a class="list-group-item noUnderline @if(Request::segment(2)=='categoria' && Request::segment(3)=='') active @endif" href="{{url('admin/categoria')}}">Ver Todas</a>
                <a class="list-group-item noUnderline @if(Request::segment(2)=='categoria' && Request::segment(3)=='nueva') active @endif" href="{{url('admin/categoria/nueva')}}">A&ntilde;adir Categor&iacute;a</a>
                <li class="list-group-item">Eliminar Categoria</li>
                <a class="list-group-item noUnderline @if(Request::segment(2)=='categoria' && Request::segment(3)=='editar') active @endif" href="{{url('admin/categoria/editar')}}">Editar Categoria</a>
            </ul>
        </div>
    </div>
    <br/>

    <div class="panel panel-info">
        <div class="panel-heading" role="tab" id="headingThree">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"
                   aria-expanded="true" aria-controls="collapseThree">
                    <b>Productos</b>
                </a>
            </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse in" role="tabpanel"
             aria-labelledby="headingThree">
            <ul class="list-group">
                <a class="list-group-item noUnderline @if(Request::segment(2)=='producto' && Request::segment(3)=='') active @endif" href="{{url('admin/producto')}}">Ver Todos</a>
                <a class="list-group-item noUnderline @if(Request::segment(2)=='producto' && Request::segment(3)=='nuevo') active @endif" href="{{url('admin/producto/nuevo')}}">A&ntilde;adir Producto</a>
                <a class="list-group-item noUnderline @if(Request::segment(2)=='producto' && Request::segment(3)=='borrar') active @endif" href="{{url('admin/producto/borrar')}}">Eliminar Producto</a>
                <a class="list-group-item noUnderline @if(Request::segment(2)=='producto' && Request::segment(3)=='editar') active @endif" href="{{url('admin/producto/editar')}}">Editar Producto</a>
            </ul>
        </div>
    </div>
    <br/>

    <div class="panel panel-info">
        <div class="panel-heading" role="tab" id="headingFour">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour"
                   aria-expanded="true" aria-controls="collapseFour">
                    <b>Ofertas</b>
                </a>
            </h4>
        </div>
        <div id="collapseFour" class="panel-collapse collapse in" role="tabpanel"
             aria-labelledby="headingFour">
            <ul class="list-group">
                <li class="list-group-item">Ver Todas</li>
                <li class="list-group-item">Eliminar Ofertas</li>
                <li class="list-group-item">Editar Ofertas</li>
                <li class="list-group-item">Editar Ofertas Index</li>
            </ul>
        </div>
    </div>
    <br/>

    <div class="panel panel-danger">
        <div class="panel-heading" role="tab" id="headingFive">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive"
                   aria-expanded="true" aria-controls="collapseFive">
                    <b>Administraci&oacute;n (To Do)</b>
                </a>
            </h4>
        </div>
        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel"
             aria-labelledby="headingFive">
            <ul class="list-group">
                <li class="list-group-item">Total Ventas</li>
                <li class="list-group-item">Listar Ficheros Pedidos</li>
                <li class="list-group-item">Morbi leo risus</li>
                <li class="list-group-item">Porta ac consectetur ac</li>
                <li class="list-group-item">Vestibulum at eros</li>
            </ul>
        </div>
    </div>
</div>