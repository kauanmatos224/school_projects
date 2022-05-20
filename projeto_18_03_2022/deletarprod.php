<?php
include "conexao.php";

$codx=$_POST["txtcod"];


$resultado=mysqli_query($con,"delete from tab 
	where cod=$codx");

$fechar=mysqli_close($con);
echo "<script> alert('excluido com sucesso');</script>";
header('Location: listaprod.php');
?>