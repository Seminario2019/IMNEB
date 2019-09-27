<div class="modal fade" id="modal_adperfil">
  <div class="modal-dialog">
    <div class="modal-content">


      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title">Editar Perfil</h4>
      </div>
          <div class="col-sm-3">
                        
                            <img ng-src="{{imagen}}" class="img-circle" alt="" width="50px" height="50px">
                            
                     
                     <button class="btn btn-danger  btn-sm fa fa-upload "   ng-click="fotoModal('in')" ng-disabled="editado.btn2">. Fotografia </button>
                   
                </div>
          <form  class="form-inline"   style="text-align: center; background-color: #ffffff; border-color:  #FFC414;  "    >
                                                 
                       <table class="form-group" style="text-align: left; margin-left: 2%; margin-right:2%;"  > 
                           <tr><td>  <label style="width: 100px;  text-align: left;">Nombre</label>  </td><td>
                            <input type="text" ng-disabled="editado.us1" required class="form-control" value="" placeholder="Nombre" size="50" ng-model="dato.nombre">
                            
                            </td> 
                        <tr>     <td ><label style="width: 100px;text-align: left;">Apellido:</label></td><td>
                                   <input type="text" ng-disabled="editado.us2" required  class="form-control" placeholder="Apellido:" value="" size="50" ng-model="dato.apellido">
                        </td> </tr> 
                        <tr>     <td ><label style="width: 100px;text-align: left;">Email:</label></td><td>
                                   <input type="text" ng-disabled="editado.us3" required  class="form-control" placeholder="Email:" value="" size="50" ng-model="dato.email">
                         </td></tr> 
                        <tr>     <td><label style="width: 100px;text-align: left;">Pais:</label></td><td>
                                   <input type="text" ng-disabled="editado.us4" required class="form-control" placeholder="Pais" value="" size="50" ng-model="dato.pais">
                        </td></tr> 
                        <tr>     <td ><label style="width: 100px;text-align: left;">Departamento:</label></td><td>
                                   <input type="text" ng-disabled="editado.us5" required class="form-control" placeholder="Departamento:" value="" size="50" ng-model="dato.depto">
                        </td></tr> 
                        <tr>     <td ><label style="width: 100px;text-align: left;">Comentarios:</label></td><td>
                                   <input type="text" ng-disabled="editado.us6" required class="form-control" placeholder="Comentarios:" value="" size="50" ng-model="dato.coments">
                        </td></tr> 
                        
                        <tr>     <td ><label style="width: 100px;text-align: left;">Edad:</label></td><td>
                                   <input type="text" ng-disabled="editado.us8" required class="form-control" placeholder="Edad:" value="" size="50" ng-model="dato.edad">
                        </td></tr> 
                        <tr>     <td><label style="width: 100px;text-align: left;">Sexo:</label></td><td>
                                   <input type="text" ng-disabled="editado.us9" required class="form-control" placeholder="Sexo:" value="" size="50" ng-model="dato.sexo">
                        </td></tr> 
                        <tr>     <td ><label style="width: 100px;text-align: left;">Telefono:</label></td><td>
                                   <input type="text" ng-disabled="editado.us10" required class="form-control" placeholder="Telefono:" value="" size="50" ng-model="dato.telefono">
                        </td></tr> 
                        <tr>     <td ><label style="width: 100px;text-align: left;">Celular:</label></td><td>
                                   <input type="text" ng-disabled="editado.us11" required class="form-control" placeholder="Celular:" value="" size="50" ng-model="dato.celular">
                        </td></tr> 
                        <tr>     <td ><label style="width: 100px;text-align: left;">Cede:</label></td><td>
                                   <input type="text" ng-disabled="editado.us12" required class="form-control" placeholder="Cede:" value="" size="50" ng-model="dato.cede">
                        </td></tr> 
                        <tr>     <td ><label style="width: 100px;text-align: left;">Biografia:</label></td><td>
                                   <input type="text" ng-disabled="editado.us13" required class="form-control" placeholder="Biografia:" value="" size="50" ng-model="dato.bio">
                         </td></tr> 
                        <tr>     <td ><label style="width: 100px;text-align: left;">Region:</label></td><td>
                                   
                                   <select type="text" class="form-control"  placeholder="Region:" ng-model="dato.region" ng-disabled="editado.us14" >
                                        <option value="oriente">Región Oriente</option>
                                        <option value="sur" >Región Sur</option>
                                        <option value="occidente"  >Región Occidente</option>
                                        <option value="centro" >Región Centro</option>
                                        <option value="norte" >Región Norte</option>
                                    </select>
                        </td></tr> 

                     
                      </table>
                      <br/>                      
                      <button ng-click="guardar()" class="btn btn-success" ng-disabled="editado.btn" >
                          <span class="fa fa-save" ></span> Guardar 
                      </button> 
                      <button ng-click="editar()" class="btn btn-primary" ng-disabled="editado.btn1" >
                          <span class="fa fa-save" ></span> Editar
                      </button>                    
                  </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
  
      <div ng-include="'Servicios/perfiles/modal_upfoto.html'"></div>
</div>
