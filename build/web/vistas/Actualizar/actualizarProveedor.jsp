<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("usuario") != null) {
%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sistema TMC| act/Proveedor</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
        <link href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="swetalert/sweetalert.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <header class="main-header">
                <a href="#" class="logo">
                    <span class="logo-mini"><b>T</b>MC</span>
                    <span class="logo-lg"><b>Administrador </b>TMC</span>
                </a>
                <nav class="navbar navbar-static-top" role="navigation">
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only"></span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="dist/img/user8-128x128.jpg" class="user-image" alt="User Image">
                                    <span class="hidden-xs"> ${usuario.nombreUsuario}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="user-header">
                                        <p align= left>                    
                                            <small>Señor ${usuario.cargo.nombreCargo} usted como  miembro del personal TMC System, tiene la responsabilidad de mantener la seguridad de información dentro de las actividades relacionadas con su actividad laboral</small>
                                        </p>
                                    </li>
                                    <li class="user-footer">
                                        <div class="pull-right">
                                            <a href="srvUsuario?accion=retornarVista" class="btn btn-default btn-flat">PANEL PRINCIPAL</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <aside class="main-sidebar">
                <section class="sidebar">
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="dist/img/user8-128x128.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>${usuario.nombreUsuario} </p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <ul class="sidebar-menu" data-widget="tree">
                        <li><a href="#"><i ></i> <span></span></a></li>
                        <li class="treeview active">
                            <a href="#"><i class="glyphicon glyphicon-th-large"></i> <span>Actualizar</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="srvUsuario?accion=listarEmpleado"><i class="fa fa-address-book"></i> Empleados</a></li>                               
                                <li><a href="srvUsuario?accion=listarMarca"><i class="fa fa-deaf"></i> Marcas</a></li>
                                <li><a href="srvUsuario?accion=listarProductos"><i class="fa fa-cogs"></i> Productos</a></li>
                                <li class="active"><a href="srvUsuario?accion=listarProveedor"><i class="fa fa-motorcycle"></i> Proveedores</a></li>
                                <li><a href="srvUsuario?accion=listarUsuarios"><i class="fa fa-user"></i> Usuarios</a></li>
                            </ul>
                        </li>
                    </ul>
                </section>
            </aside>
            <div class="content-wrapper">
                <section class="content-header">
                    <div class="row">
                        <div class="col-xs-12 col-md-3">
                        </div>
                        <div class="col-md-3 hidden-xs"></div>
                        <div class="col-xs-2 col-md-1">
                        </div>
                        <div class="col-xs-10 col-md-5 ">
                            <div class="btn-group pull-right">
                                <a href="srvUsuario?accion=listarProveedor" class="btn btn-danger">
                                    <i class="fa fa-align-justify"></i> Cancelar</a>                                              
                            </div>
                        </div>
                    </div>
                </section>
                <section class="content">
                    <div class="box">
                        <div class="box-header with-border">
                            <i class="fa fa-edit"></i> <h3 class="box-title">Actualizar Datos Proveedor</h3>  
                        </div>
                        <form class="form-horizontal" action="srvUsuario?accion=actualizarProveedor" method="post">
                            <input type="hidden" name="pvrCodigo" value="${proveedores.idProveedor}">
                            <div class="box-body">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Nombre</label>
                                    <div class="col-sm-4 input-group">
                                        <span class="input-group-addon"><i class="fa fa-database"></i></span>
                                        <input id="nombre" type="text" class="form-control" placeholder="Ejem: TecnicMotorCycles" name="txtNombrePrvd" maxlength="30"
                                               value="${proveedores.nombre}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Dirección</label>
                                    <div class="col-sm-4 input-group">
                                        <span class="input-group-addon"><i class="fa fa-database"></i></span>
                                        <input  id="nombre"  type="text" class="form-control" placeholder="Ejem: Cl. 17 #15-9" name="txtDireccion" maxlength="20"
                                                value="${proveedores.direccion}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Telefono</label>
                                    <div class="col-sm-4 input-group">
                                        <span class="input-group-addon"><i class="fa fa-database"></i></span>
                                        <input  id="nombre"  type="text" class="form-control" placeholder="Ejem: (1) 746 82 30" name="txtTelefono" maxlength="20"
                                                value="${proveedores.telefono}">
                                    </div>
                                </div>
                                <div hidden class="form-group">
                                    <label class="col-sm-2 control-label">Número Nit</label>
                                    <div class="col-sm-4 input-group">
                                        <span class="input-group-addon"><i class="fa fa-database"></i></span>
                                        <input readonly id="nombre"  type="text" class="form-control" placeholder="Ejem: 900503045-5" name="txtNit" maxlength="20"
                                               value="${proveedores.nit}">
                                    </div>
                                </div>
                                <div hidden class="form-group">
                                    <label class="col-sm-2 control-label">Código Bogotá</label>
                                    <div class="col-sm-4 input-group">
                                        <span class="input-group-addon"><i class="fa fa-database"></i></span>
                                        <input readonly id="nombre"  type="text" class="form-control" placeholder="Ejem: Código Bogotá" name="txtEstadoPrd" maxlength="20"
                                               value="${proveedores.estado}">
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="submit" id="" name="btnRegistrar" value="Registrar" class="btn btn-success"><i class="fa fa-refresh"></i> Actualizar</button>
                            </div>
                        </form>
                    </div>
                </section> 
            </div>
            <footer class="main-footer">
                <div class="pull-right hidden-xs" style="font-weight:bold">
                    Administrador/PROVEEDORES
                </div>
                <strong>Copyright &copy; 2021 <a href="#">TecnicMotorCycles</a>.</strong> Todos los derechos reservados.
            </footer>
            <div class="control-sidebar-bg"></div>
        </div>
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="dist/js/adminlte.min.js"></script>
    </body>
</html>
<%
    } else {
        response.sendRedirect("identificar.jsp");
    }
%>