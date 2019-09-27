

<div  class="hold-transition skin-blue sidebar-mini" >
    <div class="wrapper">

      <!-- Main Header -->
      <header class="main-header">
        <!-- Logo -->
        <a class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>{{ config[0].iniciales }} </b>{{ config[0].iniciales | quitarletra }}</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b> {{ config[0].aplicativo }} </b>{{ config[0].iniciales }}</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
              <div  ui-view="header"> </div>              
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar"
          ng-include="'Servicios/home/menu.html'">
      </aside>
      
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <!--   <section class="content-header">

          <h1>
           {{ config[0].titulo }} 
            <small>{{ config[0].subtitulo }}</small>-->
        <!--  </h1>

        </section>-->

        <!-- Main content -->
        <section class="content" ui-view="content" style=" background-color:  #ffffff">
          
     
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <!-- Main Footer -->
      <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
          {{ config[0].version }}
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; {{ config[0].anio }} 
            <a href="{{ config[0].web }}" target="blank">{{ config[0].empresa}}</a>.
        </strong> Derechos reservados.
      </footer>

    
    </div><!-- ./wrapper -->
</div>

<!--  <nav class="navbar navbar-default no-margin">
    <!-- Brand and toggle get grouped for better mobile display 
                <div class="navbar-header fixed-brand">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"  id="menu-toggle">
                      <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
                    </button>
                    <a class="navbar-brand" href=""><i class="fa fa-rocket fa-4"></i> SEEGATESITE</a>
                </div><!-- navbar-header
 
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="active" ><button class="navbar-toggle collapse in" data-toggle="collapse" id="menu-toggle-2"> <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span></button></li>
                            </ul>
                </div><!-- bs-example-navbar-collapse-1
    </nav>
    <div id="wrapper">
        <!-- Sidebar 
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav nav-pills nav-stacked" id="menu">
 
                <li class="active">
                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-dashboard fa-stack-1x "></i></span> Dashboard</a>
                       <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                        <li><a href="#">link1</a></li>
                        <li><a href="#">link2</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-flag fa-stack-1x "></i></span> Shortcut</a>
                    <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                        <li><a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-flag fa-stack-1x "></i></span>link1</a></li>
                        <li><a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-flag fa-stack-1x "></i></span>link2</a></li>
 
                    </ul>
                </li>
                <li>
                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-cloud-download fa-stack-1x "></i></span>Overview</a>
                </li>
                <li>
                    <a href="#"> <span class="fa-stack fa-lg pull-left"><i class="fa fa-cart-plus fa-stack-1x "></i></span>Events</a>
                </li>
                <li>
                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-youtube-play fa-stack-1x "></i></span>About</a>
                </li>
                <li>
                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-wrench fa-stack-1x "></i></span>Services</a>
                </li>
                <li>
                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-server fa-stack-1x "></i></span>Contact</a>
                </li>
            </ul>
        </div><!-- /#sidebar-wrapper 
        <!-- Page Content 
        <div id="page-content-wrapper">
            <div class="container-fluid xyz">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Simple Sidebar With Bootstrap 3 by <a href="https://seegatesite.com/create-simple-cool-sidebar-menu-with-bootstrap-3/" >Seegatesite.com</a></h1>
                        <p>This sidebar is adopted from start bootstrap simple sidebar startboostrap.com, which I modified slightly to be more cool. For tutorials and how to create it , you can read from my site here <a href="https://seegatesite.com/create-simple-cool-sidebar-menu-with-bootstrap-3/">create cool simple sidebar menu with boostrap 3</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper 
    </div>
    <!-- /#wrapper -->     
   