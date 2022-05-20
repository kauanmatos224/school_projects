<html>
 <link href="bootstrap5/css/bootstrap.min.css" rel="stylesheet">
 <link href="bootstrap5/css/my-style.css" rel="stylesheet">

<body>

<?php

include "conexao.php";

		$comando="select * from usuario";
		$resulta=mysqli_query($con,$comando);
	?>
	<div class="container">
		<table class="table" border="1" cellspacing="0" align="center">
		<tr bgcolor="#006699" style="color:white;">
	
		<td class="text-center"> Login </td>
		<td class="text-center"> Senha </td>
		<td class="text-center"> Foto </td>
	
        <td class="text-center"> Remover </td>
		<td class="text-center"> Editar </td>
		</tr>
		
	<?php
		while($registro=mysqli_fetch_array($resulta))
		{
	?>
	
			<tr>
			
			<td class="text-center"><?php echo $registro[1];?></td>
			<td class="text-center"><?php echo $registro[2];?></td> 
			<td class="text-center"><?php echo "<img src=img/$registro[3] width=100 height=100>";?></td> 
			
            <td class="text-center">
            <form name="fox" action="deletar.php"  method="POST">
			<input name="txtcod" id="codx"  type="hidden" value="<?php echo $registro[0];?>" >

            	<input type="image" src="img/deletar.png" onClick="this.form.submit()">
            </form>
        </td> 

		<td class="text-center">
            <form name="fox" action="editar.php"  method="POST">
			<input name="txtcod" id="codx"  type="hidden" value="<?php echo $registro[0];?>" >

            	<input type="image" src="img/editar.png" onClick="this.form.submit()">
            </form>
        </td> 
       
			
			</tr>

	<?php
		}
	?>
			</table>
	<a href="menu.html" class="button">Voltar</a>

	</div>
</body>
</html>
