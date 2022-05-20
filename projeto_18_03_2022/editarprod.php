<html>
<body>
<?php
include "conexao.php";

$codx=$_POST["txtcod"];


$resultado=mysqli_query($con,"select *  from tab 
	where cod=$codx");

if($r = mysqli_fetch_array($resultado)){

?>
<br>
<form name=forprod method="POST" action="alterarprod.php">
	<br>
    CODIGO <input type="text" name="txtcod"  readonly=true value = <?php echo $r[0]; ?>  ><br>
	NOME <input type="text" name="txtnome" value = <?php echo $r[1]; ?>  ><br>
	VALOR <input type="text" name="txtvalor" value = <?php echo $r[2]; ?>><br>
	QUANTIDADE <input type="text" name="txtquant" value = <?php echo $r[3]; ?>><br>
	<input type="submit"  value="alterar">
	<input type="reset" value="limpar">
</form>
<?php

//echo "<img src=".$r[3]." width=300 height=300><br>";
}


$fechar=mysqli_close($con);

?>
</body>
</html>