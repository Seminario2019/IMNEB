

    <!--Login--> 
    
    <div  ng-controller="login">
     <div class="login-box"  style="background-color:  #ffffff; width: 80%; height: 80%;  box-shadow: 8px 8px 10px 0px #818181;  border-radius: 20px;">
         <div class="login-box" style=" " >
              <div class="login-logo">        
                <a href=""><strong>Net</strong>Info</a>
              </div><!-- /.login-logo -->
              <div class="login-box-body">
                <p class="login-box-msg">Ingrese al Sistema</p>
                    <form  ng-submit="entrar(txtUsuario,txtContrasena)"  class="form-group">
                        <fieldset>
                            <div class="input-group">
                                <span class="input-group-addon">  <i class="fa fa-user"></i></span> 
                              <input class="form-control" ng-model="txtUsuario" placeholder="Usuario" name="email" type="text" required>
                                
                              </div>
                            <div class="input-group">
                                <span class="input-group-addon">  <i class="fa fa-key"></i></span> 
                              <input class="form-control" ng-model="txtContrasena" placeholder="Contraseña" name="password" type="password" value=""  required>
                          </div>
                          <div class="row">
                            <div class="col-xs-12">
                              <button type="submit" 
                                class="btn btn-primary btn-block btn-flat"
                                >Ingresar al Sistemas</button>
                              </div><!-- /.col -->
                          </div>
                        </fieldset>
                     </form>
                </div>
              </div>
        <!-- Login: ALERTA DE USUARIO Y CONTRASEÑA INCORRECTA -->  
        <div class="alert alert-warning alert-dismissible fade in" role="alert" ng-hide="alertaLoginError">
          <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <strong>Lo siento!</strong> Tu Usuario o Contraseña estan incorrectos.
        </div>
        <!-- Login: ALERTA DE USUARIO Y CONTRASEÑA CORRECTOS -->  
        <div class="alert alert-success alert-dismissible fade in" role="alert" ng-hide="alertaLoginCorrecto">
          <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
          <!-- Con {{rsJSON | json}} Vamos a renderizar nuestro JSON en esta Zona  -->
          <strong>Bienvenido!</strong> {{rsJSON | json}}.
        </div>
    </div> <!-- Fin del Container -->
    </div>