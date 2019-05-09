
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GALERÍA PRIVADA</title>

    <!--  CSS de Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Librería jQuery requerida por los plugins de JavaScript -->
    <script src="http://code.jquery.com/jquery.js"></script>

    <!-- Librería jQuery personalizada-->
    <script src="js/jquery-example.js"></script>
    
    <!-- Todos los plugins JavaScript de Bootstrap (también puedes incluir archivos JavaScript individuales de los únicos plugins que utilices) -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Referencia a otro archivo css propio, donde se realizan las modificaciones css de los componentes y elementos -->
    <link href="css/personalizado.css" rel="stylesheet">
    <!-- Referencia a otro archivo css propio, donde se realizan las modificaciones css de la página principal -->
    <link href="css/starter-template.css" rel="stylesheet">
    <script type="text/javascript">
    window.onload = function () {
    document.usu.NomUsuario.focus();
    document.usu.addEventListener('submit', validarFormulario); 
    }
    function validarFormulario(evObject) {
        evObject.preventDefault();
        var todoCorrecto = true;
        var formulario = document.usu;
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
    </head>
    <body>
        <!-- Se configura el menú superior-->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="Profile.html">
              <img src="img/Derbild.png" style="width: auto; height:90%; display: inline-block; clear: both; "> Derbild
          </a>
        </div>
        <!-- Se especifica los elementos que dispondremos en el menú superior-->
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="Profile.html">Perfil</a></li>
            <li class="active"><a href="Galeria.html">Galeria Privada</a></li>
            <li><a href="catalogofotografos.jsp">Catálogo</a></li>
            <li><a href="soporte.jsp">Soporte</a></li>
            <li><a href="Controller/CerrarSesion.jsp">Cerrar sesión</a></li>
          </ul>
        </div>
      </div>
    </nav>
         <!-- Contenido de la página -->
    <div class="container">

        <!-- Encabezado de página / Breadcrumb -->
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-header">Galeria Privada</h1>
            </div>
        </div>
            <!-- Fin Encabezado de página / Breadcrumb -->
            <div class="row">
                <!-- Parte central -->
                <div class="col-md-9">
                    <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey;">
                        <h3 style="text-align: center">Tu galería</h3>
                    </div>
                     <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <br>
                                     <label>Fotografias</label>
                                     <div>
                                    <br>
                                    <img src="https://estaticos.elperiodico.com/resources/jpg/1/4/1538070751041.jpg" width="300" height="195" alt="Muestra 1"/>
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn61Qgloh0i6C7SAylkDjNLMPZ-29G0jxGL-cVmm-l4Nsa7lnQ" width="300" height="195" alt="Muestra 2"/>
                                    <br>
                                    <img src="https://http2.mlstatic.com/3-bengalas-de-humo-de-colores-sesion-de-fotos-bodas-sorpresa-D_NQ_NP_905195-MLM26250947514_102017-F.jpg" width="200" height="250" alt="Muestra 3"/>
                                    <br>
                                    <img src="https://www.laguiadelvaron.com/wp-content/uploads/2016/08/sg1.jpg" width="200" height="250" alt="Muestra 4"/>
                                    <br>
                                    <img src="https://www.mayalagos.com/wp-content/uploads/Maya-Lagos-Javier-Alexis-Sesi%C3%B3n-Fotogr%C3%A1fica-Gay-336.jpg" width="300" height="195" alt="Muestra 5"/>
                                    </div>
                                     <br>
                                     <form name="usu" action="buscarcliente.jsp" method="post">
                                         <label>Nombre de usuario:</label>
                                         <br>
                                        <input type="text" id="Nombre de Usuario" name="NomUsuario" maxlength="10" oncopy="return false" onpaste="return false" pattern="[A-Za-z0-9]{1,10}"/>
                                        <br><br>
                                        <input type="file" class="form-control" id="txtFoto" placeholder="Introduzca sus Fotografias" required data-validation-required-message="Por favor introduzca sus fotografias.">
                                        <br><br>
                                        <button type="button" id="btnSubir" class="btn btn-warning">Subir</button>
                                        <br>
                                     </form>
                <!-- Se inicia el form (ojo todos los elementos de formulario deben ir dentro de esta etiqueta-->
                                </div>
                                </div>
                            </div>
                         </div>
                    </div>
                </div>
            </div>

   
    </body>
</html>
