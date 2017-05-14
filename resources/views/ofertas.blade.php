@extends('template')
@section('title')
    {{$title}}
@endsection
@section('content')
    @for($i=0;$i<12;$i++)
        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
            <a target="_self" href="{!! url('product/'.$i) !!}">
                <div class="thumbnail noUnderline" style="border:none">
                    <img src="{!! asset('img/camera_icon.jpg')  !!}" alt="..." class="img-responsive">
                    <div class="caption amarillo img-rounded">
                        <h4>Oferta</h4>
                    </div>
                </div>
            </a>
        </div>
    @endfor
@endsection