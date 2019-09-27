<?php
	//phpinfo();
require_once("../Database.php");
$JSON       = file_get_contents("php://input");
$request    = json_decode($JSON);
$usuario    = $request->usuario; 
 
$data = array();
if( $conn ) {
	 $sql = "select t0.id_men as id, t0.nombre
                from men t0
                inner join PER t1 on t1.id_menu = t0.id_men
                where t1.id_user = $usuario ";
	$stmt = sqlsrv_query( $conn, $sql );
	if( $stmt === false) {
		die( print_r( sqlsrv_errors(), true) );
	}

	while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC) ) {
		  $data[] = $row;
                  //$reponse['statuslogin']=1;
                  //$data=json_encode($reponse);

	}

}else{
     die( print_r( sqlsrv_errors(), true));
     
                 // $reponse['statuslogin']=0;
}

	sqlsrv_free_stmt( $stmt);
        sqlsrv_close($conn);
        print json_encode($data);
?>

