

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
    document.reg.NomUsuario.focus();
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
      <li><a href="index.jsp">DERBILD</a></li>
      
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
        <br><br><br>
      </div>       
    </div>
    <div class="container">
      <div class="row">        
        <div class="col s4">
          <!-- Promo Content 1 goes here -->
        </div>
        <div class="col s4">
        <div class="row">
          <form class="col s12" name="reg" action="registrarse.jsp" method="POST">
            
            <div class="row">
           <div class="input-field col s12">
             <i class="material-icons prefix">account_circle</i>
             <input id="Usuario" oncopy="return false" onpaste="return false" pattern="[A-Za-z0-9]{1,8}" type="text"  class="validate" name="NomUsuario">
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Usuario</label>
           </div>
          </div>
          <div class="row">
           <div class="input-field col s12">
             <i class="material-icons prefix">lock</i>
             <input id="Contraseña" oncopy="return false" onpaste="return false" pattern="[A-Za-z0-9]{1,8}" type="password" class="validate" name="Pass">
             <label for="icon_password" data-success="Correcto" data-error="Mal">Contraseña</label>
           </div>   
          </div>
          <div class="row">
            <div class="input-field col s12">
                <select id="Tipo de cuenta" name="Rol">
                                            <option value="" selected disabled hidden>Seleccione tipo de cuenta</option>
                                            <option value="1">Cliente</option>
                                            <option value="2">Fotógrafo</option>
                                            <option value="3">Operador</option>
                                            <option value="4">Gerente de soporte</option>
                                            <option value="5">Ingeniero de Software</option>
                                        </select>
                <label>Privilegio</label>
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
