<?php
	//phpinfo();
require_once("../Database.php");
/*$JSON       = file_get_contents("php://input");
$request    = json_decode($JSON);
$usuario    = $request->usuario; */
 
$data = array();
if( $conn ) {
	 $sql = " select t0.id_men,t0.subicon,rtrim(t0.tree) tree, rtrim(t0.nombre) nombre,rtrim(t0.languaje) languaje,rtrim(t0.page) page,rtrim(t0.icon) icon 
                 from MEN t0 
                  ; ";
	$stmt = sqlsrv_query( $conn, $sql, array(), array( "Scrollable" => 'static' ));
        $row_count = sqlsrv_num_rows( $stmt )-1;

	if( $stmt === false) {
		die( print_r( sqlsrv_errors(), true) );
	}        
         $i=0;
       print "["; 
	while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC) ) {
         
            print  "{\"page\":\"";  print $row["page"]; print "\","
                    . "\"id_men\":\"";  print $row["id_men"]; print "\","
                    . "\"icon\":\"";  print $row["icon"]; print "\","
                    . "\"nombre\":\"";  print $row["nombre"]; print "\","
                    . "\"subicon\":\"";  print $row["subicon"]; print "\","
                    . "\"lista\":\"";  print $row["tree"]; print "\","
                    . "\"submenu\":[";
                    
                            $sql1 = "select t3.nombre subnombre,rtrim(t3.pagina) subpage      
                                    from  MEN1	t3
                                    where t3.id_menu = ".$row["id_men"]." ; ";
                           $stmt1 = sqlsrv_query( $conn, $sql1, array(), array( "Scrollable" => 'static' ));
                           $row_count1 = sqlsrv_num_rows( $stmt1 )-1;

                           if( $stmt1 === false) {
                                   die( print_r( sqlsrv_errors(), true) );
                           }       $i1=0;
                            while( $row1 = sqlsrv_fetch_array( $stmt1, SQLSRV_FETCH_ASSOC) ) {
                                    print  "{\"subnombre\":\"";  print $row1["subnombre"]; print "\","
                                            . "\"subpage\":\"";  print $row1["subpage"]; print "\"}";  
                                             //print json_encode($row);
                                        if($i1!==$row_count1){
                                           if(json_encode($row1) != '') print ",";
                                        }   
                                        $i1++;
                               }                  
                                              
                                   
                    print     "]"
                    . "}";             
                   
                 //print json_encode($row);
                 if($i!==$row_count){
                    if(json_encode($row) != '') print ",";
                 }   
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

