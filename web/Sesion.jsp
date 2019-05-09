
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
        background-image: url("https://images.wallpaperscraft.com/image/silhouette_moon_boat_135277_2560x1440.jpg");
        background-color: #cccccc;
        background-position: center;
        background-repeat: no-repeat;}
      </style>
      <script type="text/javascript">
    window.onload = function () {
    document.form.NomUsuario.focus();
    document.form.addEventListener('submit', validarFormulario); 
    }
    ;
    function validarFormulario(evObject) {
        evObject.preventDefault();
        var todoCorrecto = true;
        var formulario = document.form;
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
      <title>Iniciar Sesion.</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <!-- Dropdown Structure -->
    <ul id="dropdown" class="dropdown-content">
      <li><a href="registrarFotografo.jsp">Registro</a></li>
      <li class="divider"></li>  
      <li><a href="FAQs.html">Soporte</a></li>
      <li class="divider"></li>  
      <li><a href="index.html">DERBILD</a></li>
    </ul>
    <nav>
      <div class="nav-wrapper grey darken-3">
          <a href="#.html" class="brand-logo"><img src="img/Logo.png" style="width: 80px; height: 65px;"></a>
          <a href="#!" class="brand-logo center">Iniciar Sesión</a>
        <ul class="right hide-on-med-and-down">
          <!-- Dropdown Trigger -->
          <li><a class="dropdown-button" href="#!" data-activates="dropdown">Menu<i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>   
      </div>
    </nav> 
    <div class="container">
      <div class="row">
        <br><br><br><br><br><br>
      </div>       
    </div>
    <div class="container">
      <div class="row">        
        <div class="col s4">
          <!-- Promo Content 1 goes here -->
        </div>
        <div class="col s4">
          <form name="form" class="col s12" action="Controller/SesionF.jsp" method="POST">
          <div class="row">
           <div class="input-field col s12">
             <i class="material-icons prefix">account_circle</i>
             <input id="Usuario" type="text" class="validate" name="NomUsu" oncopy="return false" onpaste="return false" pattern="[A-Za-z0-9]{1,8}" required>
             <label for="icon_prefix" data-success="Correcto" data-error="Mal">Usuario</label>
           </div>
          </div>
          <div class="row">
           <div class="input-field col s12">
             <i class="material-icons prefix">lock</i>
             <input id="Contraseña" type="password" class="validate" name="Contra" oncopy="return false" onpaste="return false" pattern="[A-Za-z0-9]{1,8}" required>
             <label for="icon_password" data-success="Correcto" data-error="Mal">Contraseña</label>
           </div>   
          </div>
          <div class="row">
           <div class="input-field col s12">
             <center>
             <button class="btn waves-effect waves-light" type="submit" name="action">Enviar
             <i class="material-icons right">send</i>
             </button></center>
           </div>   
          </div>
          <div class="row">
           <div class="input-field col s12">
             <center>
               Si no tienes cuenta <a href="registrarFotografo.jsp">registrate aquí.</a>
             </center>
           </div>   
          </div>
          </form>
        </div>
        <div class="col s4">
         <!-- Promo Content 3 goes here -->
        </div>
      </div>
    </div>
  </body>
</html>
