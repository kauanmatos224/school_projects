<?php
include "conexao.php";

$codx=$_POST["txtcod"];


$resultado=mysqli_query($con,"delete from usuario 
	where codusuario=$codx");

$fechar=mysqli_close($con);
echo "<script> alert('excluido com sucesso');</script>";

header('Location: lista.php');
?>