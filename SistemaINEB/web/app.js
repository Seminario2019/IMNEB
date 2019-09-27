

var app = angular.module("main", ["angular-md5","moment-picker","ngTable","uiGmapgoogle-maps","ui.bootstrap","ngResource","ui.router","ngRoute","btorfs.multiselect","angular.filter"]);
app.config(['$routeProvider',function($routeProvider ) {
        $routeProvider
            .when('/', {
                url: "/login",
                templateUrl: "Servicios/login/index.jsp",
                controller:"login"
            })
            .when('/principal', {
                url: "/menu",
                    templateUrl: "Servicios/home/home.jsp",
                    controller:"home"
            }) 
            .otherwise({
            redirectTo: '/'
            });
    }]);
      app.config( ['$stateProvider','$urlRouterProvider',function ($stateProvider,$urlRouterProvider) {
        $stateProvider                                                                                             
                .state('home', {url: '/principal',
                views: {'header': {templateUrl: 'Servicios/home/header.jsp'},
                        'content': {templateUrl: 'Servicios/home/plantilla.jsp'}
                        }})
                .state('perfil', {url: '/principal',views: {'content': {templateUrl: 'Servicios/perfiles/perfil.jsp',controller:"adperfil"}}})   
                .state('adperfil', {url: '/principal',views: {'content': {templateUrl: 'Servicios/perfiles/adperfil.jsp',controller:"adperfil"}}})   
                .state('Uscontrasena', {url: '/principal',views: {'content': {templateUrl: 'Servicios/perfiles/contrasena/Uscontrasena.jsp',controller:"Uscontrasena"}}})   
                
               
               
               
            //$urlRouterProvider.otherwise('home')
    }]);
  
   app.filter( 'quitarletra',[ function(){

                return function(palabra){
                        if( palabra ){
                                if( palabra.length > 1)  return palabra.substr(1);
                                else   return palabra;
                        }
                }
        }])
        .filter('unique',[ function() {
                return function(collection, keyname) {
                   var output = [], 
                       keys = [];

                   angular.forEach(collection, function(item) {
                       var key = item[keyname];
                       if(keys.indexOf(key) === -1) {
                           keys.push(key);
                           output.push(item);
                       }
                   });

                   return output;
                };
             }])
        .filter( 'mensajecorto',[ function(){
                return function(mensaje){
                        if( mensaje ){
                                if( mensaje.length > 35)
                                        return mensaje.substr(0,35) + "...";
                                else
                                        return mensaje;
                        }
                }
        }])
        .filter('startFrom',[ function() {
            return function(input, start) {
                if(input) {
                    start = +start; //parse to int
                    return input.slice(start);
                }
                return [];
            }
            }]);    
app.service('serveData', [ function () 
        {
                return {
                        data: {
                            clientes:[],
                            facturas:[],
                            productos:[],
                            
                        }, //qty : 0
                        pickin:{facturas:[]},
                        ruta:{facturas:[]},
                        activos:{editar:"0",hoja:0,
                                 listcontactos:[],
                                 listcontactivos:[]
                            }
                };
        }])  
app.service('upload',[ '$http', '$q', function ($http, $q) 
{
	this.uploadFile = function(file, name,archivo)
	{
		var deferred = $q.defer();
		var formData = new FormData();
		formData.append("nombre", name);
		formData.append("archivo", archivo);
		formData.append("file", file);
		return $http.post("Servicios/encuestas/datosclientes/server.php", formData, {
			headers: {
				"Content-type": undefined
			},
			transformRequest: angular.identity
		})
		.success(function(res)
		{
			deferred.resolve(res);
                        
		})
		.error(function(msg, code)
		{
			deferred.reject(msg);
		})
		return deferred.promise;
	}	
}])
app.directive('ngFile', ['$parse', function ($parse) {
 return {
  restrict: 'A',
  link: function(scope, element, attrs) {
   element.bind('change', function(){

    $parse(attrs.ngFile).assign(scope,element[0].files)
    scope.$apply();
   });
  }
 };
}]);
app.service('uploadfoto',[ '$http', '$q',  function ($http, $q) 
{
	this.uploadFile = function(file, name,archivo)
	{
		var deferred = $q.defer();
		var formData = new FormData();
		formData.append("nombre", name);
		formData.append("archivo", archivo);
		formData.append("file", file);
		return $http.post("Servicios/perfiles/server.php", formData, {
			headers: {
				"Content-type": undefined
			},
			transformRequest: angular.identity
		})
		.success(function(res)
		{
			deferred.resolve(res);
                        
		})
		.error(function(msg, code)
		{
			deferred.reject(msg);
		})
		return deferred.promise;
	}	
}])
    