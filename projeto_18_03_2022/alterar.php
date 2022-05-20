<?php
include "conexao.php";

$loginx=$_POST["txtlogin"];
$senhax=$_POST["txtsenha"];
$fotox=$_POST["txtfoto"];
    $comando= "update usuario set senha='$senhax',foto='$fotox'  where login='$loginx'";
    $resulta = mysqli_query($con,$comando);
    $quant=mysqli_affected_rows($con);  //pega a quantidade de registros alterados
       
          if ($quant>0) {
       echo "registro alterado";
    }
    else
      {     echo "erro na alteração";

      }

$close = mysqli_close($con);
header('Location: lista.php');
?>