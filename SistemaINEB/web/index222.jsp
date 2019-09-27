<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
   <head>
        <title>Net Info</title>
        
        
    <meta charset="UTF-8">  
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
    <link rel="icon" type="image/jpg" href="icon.jpg" />
    <meta name="description" content="NetInfo"/>    
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">    
    
    <link href="lib/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="lib/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="lib/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="lib/css/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="lib/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
    
    <link href="lib/css/skin-blue.css" rel="stylesheet" type="text/css"/>
    <link href="lib/css/ChekBox.css" rel="stylesheet" type="text/css"/>
    <link href="lib/css/nav.css" rel="stylesheet" type="text/css"/>
    
    <link href="lib/css/sweetalert.css" rel="stylesheet" type="text/css"/>
    <link href="lib/css/skin-purple.min.css" rel="stylesheet" type="text/css"/> 

   <link href="lib/css/animate.css" rel="stylesheet" type="text/css"/>
   <link href="lib/css/ng-table.min.css" rel="stylesheet" type="text/css"/>
   <link href="lib/css/Vista-elegant.css" rel="stylesheet" type="text/css"/>
   <link href="lib/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"/>
       <style type="text/css">
        #map_canvas {
            width: 100%;
            height:700px;
            position: relative;
        }

  

        .angular-google-map-container {
            position: absolute;
            top: 0;
            bottom: 0;
            right: 0;
            left: 0;
        }
    
    </style>
    
<link href="lib/pickertTime/angular-moment-picker.min.css" rel="stylesheet" type="text/css"/>
        <style>
    /* width */
    ::-webkit-scrollbar {
        width: 10px;
    }

    /* Track */
    ::-webkit-scrollbar-track {
        box-shadow: inset 0 0 5px grey; 
        border-radius: 10px;
    }

    /* Handle */
    ::-webkit-scrollbar-thumb {
        background: black; 
        border-radius: 10px;
    }

    /* Handle on hover */
    ::-webkit-scrollbar-thumb:hover {
        background: grey; 
    }
    /* width */
    :-moz-scrollbar {
        width: 10px;
    }

    /* Track */
    :-moz-scrollbar-track {
        box-shadow: inset 0 0 5px grey; 
        border-radius: 10px;
    }

    /* Handle */
    :-moz-scrollbar-thumb {
        background: black; 
        border-radius: 10px;
    }

    /* Handle on hover */
    :-moz-scrollbar-thumb:hover {
        background: grey; 
    }
    
@-moz-document url-prefix(http://),url-prefix(https://) {
    scrollbar {
       -moz-appearance: none !important;
       background: rgb(0,255,0) !important;
    }
    thumb,scrollbarbutton {
       -moz-appearance: none !important;
       background-color: rgb(0,0,255) !important;
    }

    thumb:hover,scrollbarbutton:hover {
       -moz-appearance: none !important;
       background-color: rgb(255,0,0) !important;
    }
    scrollbarbutton {
       display: none !important;
    }
    scrollbar[orient="vertical"] {
      min-width: 15px !important;
    }
}
    </style>

    </head>
    <body ng-app="main" class="hold-transition login-page skin-blue  sidebar-mini" 
          style="background-image: url(fondo.jpg); background-size: cover; background-attachment: fixed">
    
    <div ng-view></div> 
    
    
 
    <script src="lib/js/angular.min.js" type="text/javascript"></script>
    <script src="lib/js/angular-route.min.js" type="text/javascript"></script>
    <script src="lib/js/angular-ui-router.js" type="text/javascript"></script>
    <script src="lib/js/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <script src="lib/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://code.angularjs.org/1.4.8/angular-resource.js"></script> 
    <script src="lib/js/app.min-LTE.js" type="text/javascript"></script>
    <script src="lib/js/ui-bootstrap-tpls-0.13.0.min.js" type="text/javascript"></script>
    <script src="lib/js/ng-table.min.js" type="text/javascript"></script>
    <script src="lib/js/sweetalert-dev.js" type="text/javascript"></script>
    <script src="lib/js/sweetalert.min.js" type="text/javascript"></script>
    <script src="lib/js/bootbox.min.js" type="text/javascript"></script>
    <script src="lib/js/nav.js" type="text/javascript"></script>
    <script src="lib/docsupport/angular-bootstrap-multiselect.js" type="text/javascript"></script>
    <script src="lib/js/angular-filter.js" type="text/javascript"></script>
    <script src="lib/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <script src="lib/pickertTime/moment-with-locales.js" type="text/javascript"></script>
    <script src="lib/pickertTime/angular-moment-picker.min.js" type="text/javascript"></script>
    
    
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-md5/0.1.10/angular-md5.js"></script>
    
            <!--<script src="https://www.google.com/jsapi?ext.js" type="text/javascript"></script>
         Google Maps
            <script src="https://code.angularjs.org/1.3.14/angular.js"></script> -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.js"></script> 
            <script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyD8ZCxdizMJj2pxUOyGMzl0QJXX2InAlwE  "></script>
            <script src="https://rawgit.com/angular-ui/angular-google-maps/2.0.X/dist/angular-google-maps.js"></script>
            
            
    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/pie.js"></script>
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
     <!-- NUEVAS LIBRERIAS -->
        <script src="https://www.amcharts.com/lib/4/core.js"></script>
        <script src="https://www.amcharts.com/lib/4/charts.js"></script>
        <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
        
      <!------------------>  
        <script src="app.js" type="text/javascript"></script>
        <script src="Servicios/login/login.js" type="text/javascript"></script>
        <script src="Servicios/home/home.js" type="text/javascript"></script>
        <script src="Servicios/perfiles/adperfil.js" type="text/javascript"></script>
        <script src="Servicios/perfiles/contrasena/Uscontrasena.js" type="text/javascript"></script>
        
        
        
    </body>
</html>

