@extends('template')
@section('title')
    {{$title}}
@endsection
@section('content')
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                       aria-expanded="false" aria-controls="collapseOne">
                        &iquest;D&oacute;nde estamos?
                    </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body">
                    estamos en tal lao
                    <a target="_blank" href="https://www.google.es/maps/place/print+color/@37.2831892,-3.8797573,16z/data=!4m5!3m4!1s0x0:0x7279fff732c68442!8m2!3d37.2859371!4d-3.8756842">
                    <img src="{!! asset('storage/app/public/ubicacion.jpg') !!}" class="img-responsive">
                    </a>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="heading8">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse8"
                       aria-expanded="true" aria-controls="collapse8">
                        &iquest;Qu&eacute; ofrecemos?:
                    </a>
                </h4>
            </div>
            <div id="collapse8" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading8">
                <div class="panel-body">
                    <div class="col-lg-offset-1 col-lg-5">
                        <img src="{{asset('storage/app/public/logo.png')}}" class="img-responsive"/>
                    </div>
                    <div class="col-lg-5 text-center">
                        <b>&iquest;QUE SOMOS?<br/>
                            Somos una empresa dedicada al<br/>
                            sector publicitario, Papeler&iacute;a,<br/>
                            Dise&ntilde;o Grafico e Imprenta</b><br/>
                        <img src="{{asset('storage/app/public/gotas.png')}}" class="img-responsive"/>
                    </div>
                    <div class="col-lg-10 col-lg-offset-1 text-center">
                        <b class="text-left">- &iquest;QUE VENDEMOS?</b><br/>
                        En nuestra empresa podr&aacute; encontrar:<br/>
                        <b>Fotocopias</b> (fotocopias, Encuadernaciones, Plastificaci&oacute;n...)<br/>
                        <b>Regalos publicitarios</b> (Bol&iacute;grafos, Llaveros, Encendedores...)<br/>
                        <b>Ropa Laboral</b> (Pantalones, Monos, Uniformes ...)<br/>
                        <b>Impresiones</b> (fotos, flyers, tarjetas de Visita, Sobres, Carteles<br/>
                        peque&ntilde;o y Gran Formato Y Mucho mas..)<br/>
                        <b>Dise&ntilde;o Grafico</b> (Dise&ntilde;os de logotipos, Carteles ...)<br/>
                        <b>Serigraf&iacute;a</b> (Sudaderas, Camisetas, Chaquetones, Mochilas...)<br/>
                        <b>Papeler&iacute;a</b> (Amplia Gama en Papeler&iacute;a, Libretas,Bol&iacute;grafos,<br/>
                        Rotuladores, Cuadernos, Blocs...)<br/>
                        <b>Bodas y Bautizos</b> (Invitaciones de Boda y Bautizo,Etiquetas<br/>
                        de Regalos...)<br/>
                        <b>Vinilos</b> (Pegatinas en peque&ntilde;o y Gran formato, Vinilos de<br/>
                        Rotulaci&oacute;n, Vinilos impresos en gran tama&ntilde;o)<br/>
                        <b>Rotulos</b> (Rotulos en peque&ntilde;o y gran formato, Escaparates,<br/>
                        Rotulos luminosos, ..)<br/>
                        <b>Regalos personalizados</b> (Tazas, Camisetas y mucho mas...)<br/>
                        <b>Ven y Descubre Todos nuestros dem&aacute;s Productos</b>
                    <div class="amarillo text-center">
                        <b>C/ OLIVO 4 ILLORA,JUNTO A PUNTO Y APARTE<br/>
                            TELF: 657 464 168 <img src="{{asset('storage/app/public/fb.png')}}" height="50px"
                                                   width="50px"/> PrintColor &Iacute;llora</b>
                    </div>
                    </div>
        </div>
    </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingTwo">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                   href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Plazos de entrega y Gastos de env&iacute;o:
                </a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="panel-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt
                sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                labore sustainable VHS.
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingThree">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                   href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    &iquest;Dise&ntilde;as t&uacute; o lo hacemos nosotros?:
                </a>
            </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="panel-body">
                <div class="col-lg-6">
                    En PrintColor tenemos multitud de formatos publicitarios para que muestre al p&uacute;blico sus mejores productos, le ofrecemos el mejor dise&ntilde;o gr&aacute;fico para sus campa&ntilde;as publicitarias.<br/><br/>

                    Un equipo de dise&ntilde;adores gr&aacute;ficos e infografistas profesionales le ofrecen, al mejor precio, un servicio especializado y personalizado para cada cliente y trabajo.<br/><br/>

                    Desde realizar el dise&ntilde;o de una simple tarjeta informativa hasta toda una imagen corporativa, logotipos, carteler&iacute;a, flyer, vinilos, etc...
                    <br/>
                    <br/>
                    La calidad t&eacute;cnica de nuestros profesionales cubrir&aacute;n sus necesidades en materia de impresiones y publicidad de primera calidad
                    <br/>
                    <br/>
                    Informenos que necesita y le realizaremos el dise&ntilde;o mas atractivo y resolutivo a sus necesidades publicitarias.<br/>
                </div>
                <div class="col-lg-6">
                    <img src="{{asset('storage/app/public/mac-design.png')}}" class="img-responsive"/>
                </div>

            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading4">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse4"
                   aria-expanded="false" aria-controls="collapse4">
                    Formas de pago:
                </a>
            </h4>
        </div>
        <div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading4">
            <div class="panel-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt
                sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                labore sustainable VHS.
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading5">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse5"
                   aria-expanded="false" aria-controls="collapse5">
                    &iquest;Registrarse para comprar?
                </a>
            </h4>
        </div>
        <div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading5">
            <div class="panel-body">
                Trabajamos sin registros. Para realizar una compra no es necesario que te registres, &uacute;nicamente deber&aacute;s escoger los productos que necesitas y rellenar un sencillo formulario de contacto para enviar tu pedido a la direcci&oacute;n que nos indiques.
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading6">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse6"
                   aria-expanded="false" aria-controls="collapse6">
                    Caracter&iacute;sticas necesarias para tus archivos
                </a>
            </h4>
        </div>
        <div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading6">
            <div class="panel-body">
                Para obtener el mejor resultado en tus trabajos, los archivos deben seguir como m&iacute;nimo estas normativas:<br/>
                - Resoluci&oacute;n: Para archivos hasta formato A3 la resoluci&oacute;n deber&aacute; ser de 300ppp. Para archivos mayores de A3 puede ser suficiente con 150ppp.<br/>
                - Color: El color deber&aacute; estar en CMYK.<br/>
                - Sangrado: Recuerda que es muy importante que tus archivos tengan al menos 2mm de sangre y m&aacute;rgenes de seguridad para el corte final.<br/>
                - Formato archivo: Lo ideal es archivos PDF o JPG.<br/>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading7">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse7"
                   aria-expanded="false" aria-controls="collapse7">
                    Tama&ntilde;os papel serie A
                </a>
            </h4>
        </div>
        <div id="collapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading7">
            <div class="panel-body">
                <img src="{!! asset('storage/app/public/papel_medidas.jpg') !!}" class="img-responsive">
            </div>
        </div>
    </div>
    </div>
@endsection
