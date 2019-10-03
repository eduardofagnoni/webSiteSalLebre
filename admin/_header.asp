<header class="main-header">

    <!-- Logo -->
    <a href="admin.asp" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini" style="padding-top:5px;"><!-- #include file="layout/logo-m.asp" --></span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg" style="padding-top:0px;"><!-- #include file="layout/logo.asp" --></span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
    </a>

    <!-- Navbar Right Menu -->
    <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">           


            <!-- User Account Menu -->
            <li class="dropdown user user-menu">
                <!-- Menu Toggle Button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!-- The user image in the navbar-->
                <img src="images/ftAvtr.gif" class="user-image" alt="User Image">
                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                <span class="hidden-xs"><%=nomeDoUsuario%></span>
                </a>
                <ul class="dropdown-menu">
                    <!-- The user image in the menu -->
                    <li class="user-header">
                        <img src="images/ftAvtr.gif" class="img-circle" alt="User Image">

                        <p>
                        <%=nomeDoUsuario%>
                        <small>Membro desde <%=dataCadastro%></small>
                        </p>
                    </li>
                    <!-- Menu Body -->
                    <!--
                    <li class="user-body">
                        <div class="row">
                        <div class="col-xs-4 text-center">
                            <a href="#">Followers</a>
                        </div>
                        <div class="col-xs-4 text-center">
                            <a href="#">Sales</a>
                        </div>
                        <div class="col-xs-4 text-center">
                            <a href="#">Friends</a>
                        </div>
                        </div>                
                    </li>
                    -->
                    <!-- Menu Footer-->
                    <li class="user-footer">
                        <div class="pull-left">
                        <!--<a href="#" class="btn btn-default btn-flat">Perfil</a>-->
                        </div>
                        <div class="pull-right">
                        <a href="log_out.asp" class="btn btn-default btn-flat">Sair</a>
                        </div>
                    </li>
                </ul>
            </li>
            <!-- Control Sidebar Toggle Button -->
            <!--<li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
            </li>-->
        </ul>
    </div>
    </nav>
</header>