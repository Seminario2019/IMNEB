<?php
	//phpinfo();
require_once("../Database.php");
$JSON       = file_get_contents("php://input");
$request    = json_decode($JSON);
$user = $request->usuario;
print "[{\"mensaje\":\"uno\"}]";  
if( $conn ) {
	 $sql = "DELETE FROM PER WHERE id_user = $user ";
              

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
		 
                 $i++;
	}
        foreach($request->datos as $obj){
            
            $c8 = $obj->id;
            $sql =  " "
                    . "INSERT INTO PER (id_user,id_menu) "
                    . "VALUES (?,?)";
            $params = array($user,$c8);

            $stmt = sqlsrv_query( $conn, $sql, $params);
            if( $stmt === false ) {
                 die( print_r( $user(), true));
            }
           
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

