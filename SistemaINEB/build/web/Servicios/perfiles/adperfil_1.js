/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

app.controller("adperfil", ["NgTableParams","$scope","$http","$location","serveData",function(NgTableParams,$scope,$http,$location,serveData) {
    $http.get("../contenido/perfiles/adperfil.php").success(function(data){
             $scope.usuarios= data; 
        
    
        $scope.mensaje="";
             $scope.list = $scope.usuarios;
             $scope.currentPage = 1; //current page
             $scope.entryLimit = 10; //max no of items to display in a page
             $scope.filteredItems = $scope.list.length; //Initially for no filter  
             $scope.totalItems = $scope.list.length;  
              });
         $scope.goToLink = function (vendedor,cliente,clinombre) {
            serveData.data.vendedor  = vendedor;
            serveData.data.cliente = cliente; 
            serveData.data.clinombre = clinombre; 
            $location.url("/encuesta");
             $scope.mensaje="lleggo aquiiiiiii"+vendedor+"---"+cliente;
         
       };
      
        $scope.setPage = function(pageNo) {
            $scope.currentPage = pageNo;
        };
        $scope.filter = function() {
            $timeout(function() { 
                $scope.filteredItems =  $scope.filtered.length;
            }, 10);
        };
        $scope.sort_by = function(predicate) {
            $scope.predicate = predicate;
            $scope.reverse = !$scope.reverse;
        }; 
        
        $scope.dato = {};
        
        $scope.mostrarModal = function( usuario ){
                $scope.variable = usuario;
		// console.log( cliente );
		$http.get("../contenido/perfiles/adperfilEdit.php?oridd="+$scope.variable)
                        .success(function(response){
                    $scope.dato = response[0];
            
                angular.copy($scope.dato);
                $("#modal_adperfil").modal();
                });
                
	}
        $scope.editado = {
            us1:true,
            us2:true,
            us3:true,
            us4:true,
            us5:true,
            us6:true,
            us7:true,
            us8:true,
            us9:true,
            us10:true,
            us11:true,
            us12:true,
            us13:true,
            btn:true
        };
        $scope.editar = function(id,opcion){
            $scope.editado.btn = false
          if(id == '1') {
                if(opcion == true) $scope.editado.us1 = false
                else $scope.editado.us1 = true
            }
            if(id == '2') {
                if(opcion == true) $scope.editado.us2 = false
                else $scope.editado.us2 = true
            }if(id == '3') {
                if(opcion == true) $scope.editado.us3 = false
                else $scope.editado.us3 = true
            }if(id == '4') {
                if(opcion == true) $scope.editado.us4 = false
                else $scope.editado.us4 = true
            }if(id == '5') {
                if(opcion == true) $scope.editado.us5 = false
                else $scope.editado.us5 = true
            }if(id == '6') {
                if(opcion == true) $scope.editado.us6 = false
                else $scope.editado.us6 = true
            }if(id == '7') {
                if(opcion == true) $scope.editado.us7 = false
                else $scope.editado.us7 = true
            }if(id == '8') {
                if(opcion == true) $scope.editado.us8 = false
                else $scope.editado.us8 = true
            }if(id == '9') {
                if(opcion == true) $scope.editado.us9 = false
                else $scope.editado.us9 = true
            }if(id == '10') {
                if(opcion == true) $scope.editado.us10 = false
                else $scope.editado.us10 = true
            }if(id == '11') {
                if(opcion == true) $scope.editado.us11 = false
                else $scope.editado.us11 = true
            }if(id == '12') {
                if(opcion == true) $scope.editado.us12 = false
                else $scope.editado.us12 = true
            }if(id == '13') {
                if(opcion == true) $scope.editado.us13 = false
                else $scope.editado.us13 = true
            }
        }
        ;
        $scope.guardar = function refreshData() {
           $http.post("../contenido/perfiles/adperfilSave.php"
            ,{datos:$scope.dato})
             .success(function(response){
             //$window.alert(response[0].mensaje);*/swal( 'Good job!', 'You clicked the button!', 'success')
              if(response[0].mensaje == 'uno'){
                  swal( 'Exitoso!', 'Datos Guardados!', 'success')   
                  //$location.url("/plantilla");
                  $scope.editado = {
                        us1:true,
                        us2:true,
                        us3:true,
                        us4:true,
                        us5:true,
                        us6:true,
                        us7:true,
                        us8:true,
                        us9:true,
                        us10:true,
                        us11:true,
                        us12:true,
                        us13:true,
                        btn:true
                    };
              }
              else  swal("Error",response[0].mensaje, "error");    
            })
            
        };
        
}]);

