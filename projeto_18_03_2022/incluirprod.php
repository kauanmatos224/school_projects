<?php
include "conexao.php";

$nome=$_POST["txtnome"];
$valor=$_POST["txtvalor"];
$quant=$_POST["txtquant"];

$resultado=mysqli_query($con,"insert into tab(cod,nome,valor,quant) values (NULL,'$nome','$valor','$quant')");

$fechar=mysqli_close($con);
echo "<script> alert('inserido com sucesso');</script>";
header('Location: listaprod.php');
?>