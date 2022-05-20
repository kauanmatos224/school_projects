<?php
include "conexao.php";

$codx=$_POST["txtcod"];
$nomex=$_POST["txtnome"];
$valorx=$_POST["txtvalor"];
$quantx=$_POST["txtquant"];
    $comando= "update tab set nome='$nomex', valor='$valorx', quant='$quantx' where cod='$codx'";
    $resulta = mysqli_query($con,$comando);
    $quantdados=mysqli_affected_rows($con);  //pega a quantidade de registros alterados
       
          if ($quantdados>0) {
       echo "registro alterado";
    }
    else
      {     echo "erro na alteração";

      }

$close = mysqli_close($con);
header('Location: listaprod.php');
?>