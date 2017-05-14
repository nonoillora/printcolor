<div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="{!! asset('storage/app/public/ofertas/a.jpg') !!}" alt="..."
                 class="center-block img-responsive">

            <div class="carousel-caption">
                ...
            </div>
        </div>
        <div class="item">
            <img src="{!! asset('storage/app/public/ofertas/b.jpg') !!}" alt="..."
                 class="center-block img-responsive">

            <div class="carousel-caption">
                ...
            </div>
        </div>
        <div class="item">
            <img src="{!! asset('storage/app/public/ofertas/c.jpg') !!}" alt="..."
                 class="center-block img-responsive">

            <div class="carousel-caption">
                ...
            </div>
        </div>
    </div>
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <br/>
</div>
<div>
    <b>Contacte con nosotros</b><br/>
    {!! Form::open(['url' => 'newmessage','method'=>'post','class'=>'form']) !!}
    <input type="text" name="nombre" class="form-control" placeholder="Nombre" required>
    <br/>
    <input type="text" name="telefono" class="form-control" placeholder="Tel&eacute;fono" required>
    <br/>
    <input type="email" name="email" class="form-control" placeholder="Email" required>
    <br/>
    <textarea name="mensaje" class="form-control" placeholder="Mensaje" required></textarea>
    <br/>
    <button type="submit" class="center-block btn btn-primary">Enviar</button>
    {!! Form::close() !!}
    {{--@include('components/errors')--}}
    @if(Session::has('messageOK'))
        <br/>
        <div class="alert alert-success">
            <b>Mensaje recibido correctamente.</b>
        </div>
    @endif
    <br/>
</div>
<div class="hidden-lg hidden-md hidden-sm col-xs-12 text-center">
    <br/>
    <b>Tel&eacute;fono de contacto:<br/>
        <a href="tel:657464168">657 46 41 68</a><br/>
        <a href="mailto:info@printcolorillora.com">info@printcolorillora.com</a></b><br/>
    C/Olivo 4, &Iacute;llora (Granada)<br/>
</div>
</div>