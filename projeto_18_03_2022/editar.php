<html>
<body>
<?php
include "conexao.php";

$codx=$_POST["txtcod"];


$resultado=mysqli_query($con,"select *  from usuario 
	where codusuario=$codx");

if($r = mysqli_fetch_array($resultado)){

?>
<br>
<form name=forusuario method="POST" action="alterar.php">
	<br>
	LOGIN <input type="text" name="txtlogin"  readonly=true value = <?php echo $r[1]; ?>  ><br>
	SENHA<input type="password" name="txtsenha" value = <?php echo $r[2]; ?>><br>
	NOME DA FOTO <input type="text" name="txtfoto" value = <?php echo $r[3]; ?>><br>
	<input type="submit"  value="alterar">
	<input type="reset" value="limpar">
</form>
<?php

echo "<img src=".$r[3]." width=300 height=300><br>";
}


$fechar=mysqli_close($con);

?>
</body>
</html>