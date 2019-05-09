

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.css">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel = "stylesheet" href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.css">
      <script type = "text/javascript" src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.js"></script> 
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.js"></script>
      <style>body {
        background-image: url("https://images.wallpaperscraft.com/image/starry_sky_man_stars_138111_2560x1440.jpg");
        background-color: #cccccc;
        background-position: center;
        background-repeat: no-repeat;}
        
      </style>
      <script type="text/javascript">
    window.onload = function () {
    document.reg.NomUsu.focus();
    document.reg.addEventListener('submit', validarFormulario); 
    }
    ;
    function validarFormulario(evObject) {
        evObject.preventDefault();
        var todoCorrecto = true;
        var formulario = document.reg;
        for (var i=0; i<formulario.length; i++) {
            if(formulario[i].type === 'text') {
                if (formulario[i].value === null || formulario[i].value.length === 0 || /^\s*$/.test(formulario[i].value)){
                    alert (formulario[i].id+ ' no puede estar vacío o contener sólo espacios en blanco');
                    todoCorrecto=false;
                }
            }
        }
        if (todoCorrecto === true) {formulario.submit();}
    }

</script>
      <title>Registro.</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body oncopy="return false" onpaste="return false" pattern="[A-Za-z0-9]{1,8}">
    <!-- Dropdown Structure -->
    <ul id="dropdown" class="dropdown-content">
      <li><a href="IniciarSesion.jsp">Iniciar<br>Sesión</a></li>
      <li class="divider"></li>  
      <li><a href="catalogofotografos.jsp">Catálogo<br>Fotógrafos</a></li>
      <li class="divider"></li>  
      <li><a href="FAQs.html">Soporte</a></li>
      <li class="divider"></li> 
      <li><a href="index.html">DERBILD</a></li>
      
    </ul>
    <nav>
      <div class="nav-wrapper grey darken-3">
          <a href="Profile.html" class="brand-logo"><img src="img/Logo.png" style="width: 80px; height: 65px;"></a>
          <a href="#!" class="brand-logo center">Registro</a>
        <ul class="right hide-on-med-and-down">
          <!-- Dropdown Trigger -->
          <li><a class="dropdown-button" href="#!" data-activates="dropdown">Menu<i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>   
      </div>
    </nav>
    
    <div class="container">
      <div class="row">        
        <div class="col s4">
          <!-- Promo Content 1 goes here -->
        </div>
        <div class="col s4">
        <div class="row">
            
            
            
          <form class="col s12" name="reg" action="fotoregistro.jsp" method="POST">
            
            <div class="row">
           <div class="input-field col s12">
             <i class="material-icons prefix">account_circle</i>
             <input id="Usuario" oncopy="return false" onpaste="return false" 
                    pattern="[A-Za-z0-9]{1,8}" type="text"  class="validate" 
                    name="NomUsu" maxlength="8" required>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Usuario</label>
           </div>
          </div>
          <div class="row">
           <div class="input-field col s12">
             <i class="material-icons prefix">lock</i>
             <input id="Contraseña" oncopy="return false" onpaste="return false" 
                    pattern="[A-Za-z0-9]{1,8}" type="password" class="validate" 
                    name="Contra" maxlength="8" required>
             <label for="icon_password" data-success="Correcto" data-error="Mal">Contraseña</label>
           </div>   
          </div>
              <div class="row">
           <div class="input-field col s12">
             <input id="Apellido paterno" oncopy="return false" onpaste="return false" 
                    pattern="[A-Za-z]{1,15}" type="text"  class="validate" 
                    maxlength="15" name="ApP" required>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Apellido paterno</label>
           </div>
          </div>
              <div class="row">
           <div class="input-field col s12">
             <input id="Apellido materno" oncopy="return false" onpaste="return false" 
                    pattern="[A-Za-z]{1,15}" type="text"  class="validate" 
                    maxlength="15" name="ApM" required>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Apellido materno</label>
           </div>
          </div>
              <div class="row">
           <div class="input-field col s12">
             <input id="Nombre" oncopy="return false" onpaste="return false" 
                    pattern="[A-Za-z ]{1,20}" type="text"  class="validate" 
                    maxlength="20" name="Nom" required>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Nombre(s)</label>
           </div>
          </div>
              <div class="row">
           <div class="input-field col s12">
             <input id="Edad" oncopy="return false" onpaste="return false" 
                    pattern="[0-9]{2}" onkeypress='return event.charCode >= 48 && event.charCode <= 57' 
                    type="text"  class="validate" name="Edad" maxlength="2" required>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Edad</label>
           </div>
          </div>
              <div class="row">
            <div class="input-field col s12">
                <select id="Sexo" name="Sexo" required>
                                            <option value="" selected disabled hidden>Seleccione su sexo</option>
                                            <option value="h">Hombre</option>
                                            <option value="m">Mujer</option>
                                        </select>
                <label>Sexo</label>
            </div>   
          </div>
          <div class="row">
            <div class="input-field col s12">
                <select id="Experiencia" name="Exp" required>
                                            <option value="" selected disabled hidden>Seleccione su nivel de experiencia</option>
                                            <option value="a">Principiante</option>
                                            <option value="b">Intermedio</option>
                                            <option value="c">Profesional</option>
                                        </select>
                <label>Nivel de experiencia</label>
            </div>   
          </div>
              <div class="row">
            <div class="input-field col s12">
                <select id="Tipo de fotografía" name="TipoF" required>
                                            <option value="" selected disabled hidden>Seleccione el tipo de fotografías</option>
                                            <option value="a">Artística</option>
                                            <option value="b">Publicitaria</option>
                                            <option value="c">De moda</option>
                                            <option value="d">Documental</option>
                                            <option value="e">De retrato</option>
                                            <option value="f">Periodística</option>
                                            <option value="g">Aérea</option>
                                            <option value="h">Submarina</option>
                                            <option value="i">Nocturna</option>
                                            <option value="j">De paisajes</option>
                                            <option value="k">Astronómica</option>
                                            <option value="l">Científica</option>
                                            <option value="m">Fotomacrografía</option>
                                            <option value="n">Deportiva</option>
                                            <option value="o">Otro</option>
                                        </select>
                <label>Tipo de fotografías</label>
            </div>   
          </div>
              <div class="row">
              <div class="input-field col s12">
                <select id="Costo" name="Costo" required>
                                            <option value="" selected disabled hidden>Seleccione el costo por sesión</option>
                                            <option value="a">Menos de $250</option>
                                            <option value="b">Entre $250 y $500</option>
                                            <option value="c">Entre $500 y $1,000</option>
                                            <option value="d">Entre $1,000 y $2,500</option>
                                            <option value="e">Entre $2,500 y $5,000</option>
                                            <option value="f">Entre $5,000 y $7,500</option>
                                            <option value="g">Entre $7,500 y $10,000</option>
                                            <option value="h">Entre $10,000 y $15,000</option>
                                            <option value="i">Más de $15,000</option>
                                        </select>
                <label>Costo por sesión</label>
            </div>   
          </div>
              <h6 style="color: lightgrey">Ubicación de mi estudio</h6>
              <div class="row">
              <div class="input-field col s12">
                <select id="Delegación" name="Deleg" required>
                                            <option value="" selected disabled hidden>Seleccione la delegación</option>
                                            <option value="a">Álvaro Obregón</option>
                                            <option value="b">Azcapotzalco</option>
                                            <option value="c">Benito Juárez</option>
                                            <option value="d">Coyoacán</option>
                                            <option value="e">Cuajimalpa de Morelos</option>
                                            <option value="f">Cuauhtémoc</option>
                                            <option value="g">Gustavo A. Madero</option>
                                            <option value="h">Iztacalco</option>
                                            <option value="i">Iztapalapa</option>
                                            <option value="j">Magdalena Contreras</option>
                                            <option value="k">Miguel Hidalgo</option>
                                            <option value="l">Milpa Alta</option>
                                            <option value="m">Tláhuac</option>
                                            <option value="n">Tlalpan</option>
                                            <option value="o">Venustiano Carranza</option>
                                            <option value="p">Xochimilco</option>
                                        </select>
                <label>Delegación</label>
            </div>   
          </div>
              <div class="row">
           <div class="input-field col s12">
             <input id="Colonia" oncopy="return false" onpaste="return false" 
                    pattern="[A-Za-z ]{1,30}" type="text"  class="validate" required
                    maxlength="30" name="Col">
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Colonia</label>
           </div>
          </div>
              <div class="row">
           <div class="input-field col s12">
             <input id="Código postal" oncopy="return false" onpaste="return false" 
                    pattern="[0-9]{5}" type="text"  class="validate" required
                    maxlength="5" name="CP" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Código Postal</label>
           </div>
          </div>
              <div class="row">
           <div class="input-field col s12">
             <input id="Calle" oncopy="return false" onpaste="return false" 
                    pattern="[A-Za-z ]{1,30}" type="text"  class="validate" 
                    maxlength="30" name="Calle" required>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Calle</label>
           </div>
          </div>
              <div class="row">
           <div class="input-field col s12">
             <input id="Número exterior/interior" oncopy="return false" onpaste="return false" 
                    pattern="[A-Za-z0-9- ]{1,10}" type="text"  class="validate" 
                    maxlength="30" name="NumEI" required>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Número exterior/interior</label>
           </div>
          </div>
              <h6 style="color: lightgrey">Contacto</h6>
              <div class="row">
           <div class="input-field col s12">
             <input id="Correo electrónico" oncopy="return false" onpaste="return false" 
                     type="email"  class="validate" 
                    maxlength="30" name="Correo" required>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Correo electrónico</label>
           </div>
          </div>
              <div class="row">
           <div class="input-field col s12">
             <input id="Teléfono" oncopy="return false" onpaste="return false" 
                    pattern="[0-9]{8,15}" type="text"  class="validate" required
                    maxlength="15" name="Tel" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Número telefónico</label>
           </div>
          </div>
              
          <div class="row">
           <div class="input-field col s12">
             <center>
             <button class="btn waves-effect waves-light" type="submit" name="action">Registar
             <i class="material-icons right">near_me</i>
             </button></center>
           </div>   
          </div>
          </form>
        </div>
        </div>
        <div class="col s4">
         <!-- Promo Content 3 goes here -->
        </div>
      </div>
    </div>
    
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
  </body>
</html>
