<?php
	//phpinfo();
require_once("../Database.php");
$JSON       = file_get_contents("php://input");
$request    = json_decode($JSON);
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
$id_user = $request->datos->id_user;
print "[{\"mensaje\":\"uno\"}]";  
if( $conn ) {
	 $sql = "UPDATE usuarios  "
                 . "SET nombre = '$nombre' "
                 . ",apellido = '$apellido' "
                 . ",email = '$email'  "
                 . ",pais = '$pais'   "
                 . ",depto = '$depto' "
                 . ",coments = '$coments'"
                 . ",imagen = '$imagen' "
                 . ",edad = '$edad' "
                 . ",sexo = '$sexo' "
                 . ",telefono = '$telefono'  "
                 . ",celular = '$celular' "
                 . ",cede = '$cede' "
                 . ",bio = '$bio'  "
                 . ",region = '$region'  "
                 . "WHERE id_user = '$id_user';  "
                 . "select  'uno' as mensaje";

	$stmt = sqlsrv_query( $conn, $sql, array(), array( "Scrollable" => 'static' ));
        $row_count = sqlsrv_num_rows( $stmt )-1;
   
/*if ($row_count === false)
   echo "Error in retrieveing row count.";
else
   echo $row_count;*/

	if( $stmt === false) {
		die( print_r( sqlsrv_errors(), true) );
	}
         $i=0;
       //print "[";
	while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC) ) {
		  //$data[$i] = $row;                 
                 print json_encode($row);
                 if($i<$row_count){
                    if(json_encode($row) != '') print ",";
                 }   
                 $i++;
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

