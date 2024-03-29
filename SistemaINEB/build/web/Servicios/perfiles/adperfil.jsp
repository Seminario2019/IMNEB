
 <?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>       
        <style>
            .avatar{
                width: 55px;
                height: 55px;
            }
            .puntero{
                cursor: pointer;
            }

        </style>
 <div class="panel-group" >
        <div class="panel panel-primary"  >
            <div class="panel-heading">  
             {{mensaje}}
            <div class="col-md-3 input-group">
               <span class="input-group-addon"><span class="fa fa-search"></span></span><input type="text" ng-model="search" ng-change="filter()" placeholder="Buscar registros" class="form-control" />
            </div>
                     </div>
            <div class="panel-body">    
            <div class="col-md-4">
                Filtrado {{ filtered.length }} de {{ totalItems}} total datos   
                <button ng-click="nuevo()" class="btn btn-success">
                          <span class="fa fa-newspaper-o" ></span> Crear Usuario 
                </button>
            </div>
        <br/>
        <div class="row">
           
            <table class="table-hover table-bordered table-sm" style=" width: 100%">
                <thead style=" background-color: lightcyan">
                <th>Avatar&nbsp;</th>
                <th>Usuario&nbsp;<a ng-click="sort_by('usuario');"><i class="fa fa-sort"></i></a></th>
                <th>Nombre&nbsp;<a ng-click="sort_by('nombre');"><i class="fa fa-sort"></i></a></th>
                <th>Apellido&nbsp;<a ng-click="sort_by('apellido');"><i class="fa fa-sort"></i></a></th>
                <th>Contraseña</th>
                <th>Editar</th>
                <th>eliminar</th>
                </thead>
                <tbody>
                    <tr ng-repeat="data in filtered = (list | filter:search | orderBy : predicate :reverse) | startFrom:(currentPage-1)*entryLimit | limitTo:entryLimit" >
                        
                        <td><img ng-src="Servicios/perfiles/img_usuarios/{{data.imagen}}/imagen.jpg?1.{{intc}}" class="avatar img-circle" width="60px" height="50px"></td>
                        <td>{{data.usuario}}</td>
                        <td>{{data.nombre}}</td>
                        <td>{{data.apellido}}</td>
                        
                        <td>
                            <a ng-click="contrasenaModal( data.usuario )" class="btn btn-warning"><i class="fa fa-edit"></i></a>
			</td>
                        <td>
                            <a ng-click="mostrarModal( data.id )" class="btn btn-warning"><i class="fa fa-edit"></i></a>
			</td>
                        <td>
                            <a ng-click="eliminarModal( data.id )" class="btn btn-primary"><i class="fa fa-edit"></i></a>
			</td>
                    </tr>
                </tbody>
                <tfoot style=" text-align: right;" >
                            <pagination   total-items="totalItems" ng-model="currentPage"  
                                  max-size="5" boundary-links="true"  
                                  items-per-page="numPerPage" class="pagination-sm">  
                            </pagination>  
                 </tfoot>
                </table>
                
            </div>
        </div>  
        </div>  
</div>      
            
      <div ng-include="'Servicios/perfiles/modal_adperfil.jsp   '"></div>
      <div ng-include="'Servicios/perfiles/modal_nueperfil.html'"></div>
      <div ng-include="'Servicios/perfiles/modal_perfilperm.html'"></div>
      <div ng-include="'Servicios/perfiles/modal_contrasena.html'"></div>
      <div ng-include="'Servicios/perfiles/series/modal_perfilseries.html'"></div>
      