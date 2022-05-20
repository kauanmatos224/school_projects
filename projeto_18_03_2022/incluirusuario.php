<?php
include "conexao.php";

$login=$_POST["txtlogin"];
$senha=$_POST["txtsenha"];
$foto=$_POST["txtfoto"];

$resultado=mysqli_query($con,"insert into usuario(codusuario,login,senha,foto) values (NULL,'$login','$senha','$foto')");

$fechar=mysqli_close($con);
echo "<script> alert('inserido com sucesso');</script>";
header('Location: lista.php');
?>