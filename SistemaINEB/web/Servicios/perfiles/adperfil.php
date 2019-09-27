<?php
	//phpinfo();
require_once("../Database.php");
 

if( $conn ) {
	 $sql = "SELECT id_user as id,rtrim(usuario) as usuario, rtrim(nombre) as nombre,rtrim(apellido) as apellido
                 ,rtrim(imagen) as imagen,email,pais,depto,edad,RTRIM(cede) cede ,sexo,telefono,celular,cede,bio 
                 FROM usuarios ";
	$stmt = sqlsrv_query( $conn, $sql, array());
        
	if( $stmt === false) {
		die( print_r( sqlsrv_errors(), true) );
	}
         $i=0;
       print "[";
       
	while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC) ) {
	if($i!== 0){ print ",";} 	
            print "{";
                print "\"id\":"; print "\"";  print $row["id"]; print "\",";   
                print "\"usuario\":"; print "\"";  print $row["usuario"]; print "\",";  
                print "\"nombre\":"; print "\"";  print $row["nombre"]; print "\",";   
                print "\"apellido\":"; print "\"";  print $row["apellido"]; print "\",";  
                print "\"avatar\":"; print "\"";  print $row["imagen"]; print "\","; 
                print "\"sede\":"; print "\"";  print $row["cede"]; print "\","; 
                print "\"imagen\":"; print "\"";  print $row["imagen"]; print "\","; 
                print "\"celular\":"; print "\"";  print $row["celular"];print "\"";  
                 
                 
                 print"}";
                 
                 $i++;
	}
        print  "]";
        
}else{
     die( print_r( sqlsrv_errors(), true));
     
                 // $reponse['statuslogin']=0;
}

	sqlsrv_free_stmt( $stmt);
        sqlsrv_close($conn);
       //print json_encode($data);
?>

