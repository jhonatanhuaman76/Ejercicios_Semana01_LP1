<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<table class="table table-bordered p-5 m-auto text-center mt-5" style="width:500px">

	<thead>
		<tr>
			<th colspan="2" class="fs-3">Validacion de Acceso</th>
		</tr>
	</thead>
	
	<tbody>
		<tr>
			<td>
				Rol de Usuario :
			</td>
			<td>
				<select class="form-select" aria-label="Default select example">
				  <option selected>Administrador</option>
				  <option value="1">Empleado</option>
				  <option value="2">Estándar</option>
				  <option value="3">Invitado</option>
				</select> 
			</td>
		</tr>
		
		<tr>
			<td>
				Credencial
			</td>
			<td>
				<input type="text" class="form-control">
			</td>
		</tr>
		
		<tr>
			<td colspan="2">		
				<button type="button" class="btn btn-secondary btn-lg">Enviar</button>
			</td>
		</tr>
	</tbody>
	
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>