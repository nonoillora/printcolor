Nombre
<input type="text" name="nombre" name="name" class="form-control" placeholder="Nombre..">
Apellidos
<input type="text" name="apellidos" class="form-control" placeholder="Apellidos..">
<br/>
<!-- Rounded switch -->
<div>
    <span class="pull-left">&iquest;Eres empresa?</span>
    <label class="switch pull-right">
        <input type="checkbox" id="showEmpresa" name="isEmpresa">
        <div class="slider round"></div>
    </label>
</div>
<div class="hidden" id="datosEmpresa">
    <br/><br/>
    Nombre Empresa
    <input type="text" name="empresa" class="form-control" placeholder="Empresa..">
    NIF, CIF o NIE*
    <input type="text" name="nifcif" class="form-control" placeholder="NIF/CIF o NIE..">
</div>
<br/>
Tel&eacute;fono
<input type="tel" name="telefono" class="form-control" placeholder="Tel&eacute;fono..">
Email
<input type="email" name="emailUser" class="form-control" placeholder="Email..">
Direcci&oacute;n
<input type="text" name="direccion" class="form-control" placeholder="Direcci&oacute;n..">
Poblaci&oacute;n
<input type="text" name="poblacion" class="form-control" placeholder="Poblaci&oacute;n..">
C.P*
<input type="text" name="cp" class="form-control" placeholder="C&oacute;digo Postal..">
Provincia*
@include('productos.provincias')
Observaciones
<textarea class="form-control" name="observaciones" placeholder="Observaciones..."></textarea>
Imagen<br/>
<label class="btn btn-primary btn-file">
    Subir fichero <input type="file" name="imagen1" class="hidden">
</label>
<label class="btn btn-primary btn-file">
    Subir fichero <input type="file" name="imagen2" class="hidden">
</label>
<br/>
<br/>
<input type="checkbox" name="terms" required/> He le&iacute;do y acepto la Pol&iacute;tica de Protecci&oacute;n de Datos
<br/>
<br/>

