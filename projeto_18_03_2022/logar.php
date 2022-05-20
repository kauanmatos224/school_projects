<?php
include "conexao.php";
$loginx=$_POST['txtlogin'];
$senhax=$_POST['txtsenha'];
$resultado=mysqli_query($con,"select * from usuario where login='$loginx' and senha='$senhax'");
if($r = mysqli_fetch_array($resultado)){
header('Location: menu.html');
	//echo "<img src=".$r[3]." width=300 height=300><br>";
	//echo "Codigo Usuario: ".$r[0]."<br>";
	//echo "Login : ".$r[1];

}
else
{echo "<script> alert('login ou senha invalida');</script>";
}

$fechar=mysqli_close($con);
?>
