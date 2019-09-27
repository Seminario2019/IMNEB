<?php

$nombre ="undefined";
$archivo = "undefined.jpg";
/*foreach (glob("files/$nombre/*.png") as $filename) {
   echo "$filename size " . filesize($filename) . "\n";
   unlink($filename);
}*/

$file = $_FILES["file"]["name"];

$nombre = $_REQUEST["nombre"];
$archivo = $_REQUEST["archivo"];
if(!is_dir("img_usuarios/$nombre/"))
	
	mkdir("img_usuarios/$nombre/", 0777);

if($file && move_uploaded_file($_FILES["file"]["tmp_name"], "img_usuarios/$nombre/".$archivo))  //.$file
{
	echo $file;
}
?>