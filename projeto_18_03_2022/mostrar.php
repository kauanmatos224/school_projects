<?php
$cod=$_POST["txtcod"];
$nome=$_POST["txtnome"];
$tipo=$_POST["txtpizza"];
echo " Codigo : ".$cod."<br>";
echo " Nome   :".$nome."<br>";
echo "Tipo da pizza".$tipo."<br>";
if($tipo=="mussarela")
{  
	echo "<img src=mussarela.jpg>";
}
else
if ($tipo=="calabreza")
{
	echo "<img src=calabreza.jpg>";
}
?>
