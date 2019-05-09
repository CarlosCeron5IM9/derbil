
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDITANDO INFO...</title>

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
    document.regF.ApP.focus();
    document.regF.addEventListener('submit', validarFormulario); 
    }
    ;
    function validarFormulario(evObject) {
        evObject.preventDefault();
        var todoCorrecto = true;
        var formulario = document.regF;
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
        <%
            Usuario u = (Usuario)session.getAttribute("user");
            session.setAttribute("user",u);
        %>
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
                    <li><a href="galeria.jsp">Galeria Privada</a></li>
                    <li><a href="catalogofotografos.jsp">Catálogo</a></li>
                    <li><a href="IniciarSesion.jsp">Soporte</a></li>
                    <li><a href="IniciarSesion.jsp">Iniciar sesión</a></li>
                    <li class="active"><a href="registrarUsuario.jsp">Registrarse</a></li>
                    <li><a href="Controller/CerrarSesion.jsp">Cerrar sesión</a></li>
                </ul>
            </div>
        </div>
        </nav>
        <div class="container">
        <!-- Encabezado de página / Breadcrumb -->
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">Fotógrafo</h1>
                </div>
            </div>
        <div class="row">
                <!-- Parte central -->
                <div class="col-md-9">
                    <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey;">
                        <h3 style="text-align: center">Agregue su información</h3>
                    </div>
                    <div class="col-md-12" style="border-width: 1px 1px 1px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <br>
                                    <form name="regF" action="fotoregistro.jsp" method="post">
                                        
                                        <label>
                                        Sobre mí
                                        </label>
                                        <br><br>
                                        User
                                        <input type="text" id="Apellido paterno" name="NomUsu" maxlength="8"
                                               oncopy="return false" onpaste="return false" pattern="[A-Za-z]{1,8}">
                                        <br><br>
                                        Pass
                                        <input type="text" id="Apellido materno" name="Contra" maxlength="8" 
                                               oncopy="return false" onpaste="return false" pattern="[A-Za-z]{1,8}">
                                        <br><br>
                                        Apellido Paterno -
                                        <input type="text" id="Apellido paterno" name="ApP" maxlength="15"
                                               oncopy="return false" onpaste="return false" pattern="[A-Za-z]{1,15}">
                                        <br><br>
                                        Apellido Materno -
                                        <input type="text" id="Apellido materno" name="ApM" maxlength="15" 
                                               oncopy="return false" onpaste="return false" pattern="[A-Za-z]{1,15}">
                                        <br><br>
                                        Nombre(s) -
                                        <input type="text" id="Nombre" name="Nom" maxlength="20" 
                                               oncopy="return false" onpaste="return false" pattern="[A-Za-z- ]{1,20}">
                                        <br><br>
                                        Edad -
                                        <input type="text" id="Edad" name="Edad" maxlength="2" oncopy="return false" onpaste="return false" 
                                               pattern="[1-9]{2}" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        <br><br>
                                        Sexo
                                        <br>
                                        <input type="radio" name="Sexo" value="h" checked="checked"/> Hombre
                                        <input type="radio" name="Sexo" value="m"/> Mujer
                                        <br><br>
                                        <label>
                                        Datos para promocionarse
                                        </label>
                                        <br><br>
                                        Nivel de experiencia
                                        <br>
                                        <input type="radio" name="Exp" value="a" checked="checked"/> Principiante
                                        <br>
                                        <input type="radio" name="Exp" value="b"/> Intermedio
                                        <br>
                                        <input type="radio" name="Exp" value="c"/> Profesional
                                        <br><br>
                                        Tipo de fotografías con el que desea promocionarse
                                        <br>
                                        <select id="Tipo de fotografías" name="TipoF">
                                            <option value="" selected disabled hidden>- Seleccione el tipo de fotografías -</option>
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
                                        <br><br>
                                        Descripción - 
                                        <input type="text" id="Descripción" name="Des" maxlength="500" size="70" 
                                               oncopy="return false" onpaste="return false" pattern="[A-Za-z0-9- ]{1,500}">
                                        <br><br>
                                        Costo por sesión
                                        <br>
                                        <input type="radio" name="Costo" value="a" checked="checked"/> Menos de $250
                                        <br>
                                        <input type="radio" name="Costo" value="b"/> Entre $250 y $500
                                        <br>
                                        <input type="radio" name="Costo" value="c"/> Entre $500 y $1,000
                                        <br>
                                        <input type="radio" name="Costo" value="d"/> Entre $1,000 y $2,500
                                        <br>
                                        <input type="radio" name="Costo" value="e"/> Entre $2,500 y $5,000
                                        <br>
                                        <input type="radio" name="Costo" value="f"/> Entre $5,000 y $7,500
                                        <br>
                                        <input type="radio" name="Costo" value="g"/> Entre $7,500 y $10,000
                                        <br>
                                        <input type="radio" name="Costo" value="h"/> Entre $10,000 y $15,000
                                        <br>
                                        <input type="radio" name="Costo" value="i"/> Más de $15,000
                                        
                                        <br><br>
                                        Foto de perfil
                                        <input type="file" name="Foto">
                                        <br><br>
                                        
                                        <label>
                                        Ubicación de mi estudio
                                        </label>
                                        <br><br>
                                        Delegación
                                        <select id="Delegación" name="Deleg">
                                            <option value="" selected disabled hidden>- Seleccione su delegación -</option>
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
                                        <br><br>
                                        Colonia -
                                        <input type="text" id="Colonia" name="Col" maxlength="30" 
                                               oncopy="return false" onpaste="return false" pattern="[A-Za-z- ]{1,20}">
                                        <br><br>
                                        Código Postal -
                                        <input type="text" id="Código Postal" name="CP" maxlength="5" oncopy="return false" 
                                               onpaste="return false" pattern="[1-9]{5}" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        <br><br>
                                        Calle -
                                        <input type="text" id="Calle" name="Calle" maxlength="30" 
                                               oncopy="return false" onpaste="return false" pattern="[A-Za-z- ]{1,30}">
                                        <br><br>
                                        Número exterior e interior -
                                        <input type="text" id="Número exterior e interior" name="NumEI" maxlength="10" placeholder="ej: 35 - 2A"
                                               oncopy="return false" onpaste="return false" pattern="[A-Za-z0-9- ]{1,10}">
                                        <br><br>
                                        
                                        <label>
                                        Contacto
                                        </label>
                                        <br><br>
                                        Correo -
                                        <input type="email" id="Correo" name="Correo" placeholder="ej@correo.com" maxlength="30" 
                                               oncopy="return false" onpaste="return false">
                                        <br><br>
                                        Teléfono +52 55 
                                        <input type="text" id="Teléfono" name="Tel" placeholder="ingrese 8 dígitos" maxlength="8" 
                                               oncopy="return false" onpaste="return false" pattern="[1-9]{8}" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        <br><br>
                                        
                                        <input class="btn btn-success" type="submit" id="Boton registro2" name="btnRFUser" value="Registrar"/>
                                        <input class="btn btn-danger" type="reset" name="limpiar" value="Borrar"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
