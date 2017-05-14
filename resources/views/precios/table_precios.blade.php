
    @if(count($typePrice)>0)
        @foreach($typePrice as $type)
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center todosBordes" style="background-color: #feffcf">
                ENV&Iacute;O GRATIS (de 24 a 48 horas)
            </div>
            <table class="table table-responsive todosBordes">
                <tr>
                    <th class="bordeDerecha">Uds</th>
                    <th>{{$type->nameTypePrice}}</th>
                </tr>
                @foreach($type->prices as $price)
                    <tr>
                        <td class="bordeDerecha">
                            {{$price->count}}
                        </td>
                        <td>
                            {{$price->price}}
                        </td>
                    </tr>
                @endforeach
            </table>
        @endforeach
    @else
        <div>
            <br/>
            <h4><span class="label label-default label-lg">No se han añadido precios aún.</span></h4>
        </div>
    @endif














