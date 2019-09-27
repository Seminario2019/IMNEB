<?php
	//phpinfo();
require_once("../Database.php");
$JSON       = file_get_contents("php://input");
$request    = json_decode($JSON);
$usuario = $request->datos->usuario;
$clave = $request->datos->clave;
$nombre = $request->datos->nombre;
$apellido = $request->datos->apellido;
$email = $request->datos->email;
$pais = $request->datos->pais;
$depto = $request->datos->depto;
$coments = $request->datos->coments;
$imagen = $request->datos->imagen;
$edad = $request->datos->edad;
$sexo = $request->datos->sexo;
$telefono = $request->datos->telefono;
$celular = $request->datos->celular;
$cede = $request->datos->cede;
$bio = $request->datos->bio;
$region = $request->datos->region;
//$id_user = $request->datos->id_user;
print "[{\"mensaje\":\"uno\"}]";  
if( $conn ) {
	 $sql = "set @user = 0;
                 select @user=max(id_user)+1 from usuarios;
                 INSERT INTO usuarios
                (id_user,usuario,clave,nombre,apellido,email,pais,depto,coments
                ,imagen,edad,sexo,telefono,celular,cede,bio,region) 
                VALUES(@user,'$usuario','$clave','$nombre','$apellido','$email','$pais','$depto','$coments'
                 ,'$imagen','$edad','$sexo','$telefono','$celular','$cede','$bio','$region');
                                  
                select  'uno' as mensaje;";

	$stmt = sqlsrv_query( $conn, $sql, array());

	if( $stmt === false) {
		die( print_r( sqlsrv_errors(), true) );
	}
       //print "[";
	while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC) ) {
		  //$data[$i] = $row;                 
                 print "[{\"mensaje\":\"".$row["mensaje"]."\"}]";
	}
       // print  "]";
        
}else{
     die( print_r( sqlsrv_errors(), true));
     
                 // $reponse['statuslogin']=0;
}

	sqlsrv_free_stmt( $stmt);
        sqlsrv_close($conn);
       //print json_encode($data);
?>

