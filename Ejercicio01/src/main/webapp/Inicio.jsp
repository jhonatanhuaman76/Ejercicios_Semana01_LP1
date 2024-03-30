<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Ejercicio 01</title>
</head>
<body>
	<div class="d-flex gap-4 p-4">
	
		<form class="w-50">
			<h3>Registro Cursos</h3>
			 <div class="mb-3 ms-3">
			   <label for="input-codigo" class="form-label">Código</label>
			   <input type="number" class="form-control" id="input-codigo" required>
			 </div>
			 <div class="mb-3 ms-3">
			   <label for="input-nombre" class="form-label">Nombre</label>
			   <input type="text" class="form-control" id="input-nombre" required>
			 </div>
			 <div class="mb-3 ms-3">
			   <label for="input-nivel" class="form-label">Nivel</label>
			   <input type="text" class="form-control" id="input-nivel" required>
			 </div>
			 <div class="mb-3 ms-3">
			   <label for="input-profesor" class="form-label">Profesor</label>
			   <input type="text" class="form-control" id="input-profesor" required>
			 </div>
			 <div class="mb-3 ms-3">
				 <button type="submit" class="btn btn-primary">Enviar</button>
				 <button type="submit" class="btn btn-primary">Actualizar</button>
				 <button type="submit" class="btn btn-warning">Listar</button>
				 <button type="submit" class="btn btn-danger">Eliminar</button>			 
			 </div>
		</form>
		
		<table class="table mt-5 w-50">
		  <thead>
		    <tr>
		      <th scope="col">Id</th>
		      <th scope="col">Codigo</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">Nivel</th>
		      <th scope="col">Profesor</th>
		      <th scope="col">Acciones</th>
		    </tr>
		  </thead>
		  <tbody>
<!-- 		    <tr> -->
<!-- 		      <th scope="row">1</th> -->
<!-- 		      <td>Mark</td> -->
<!-- 		      <td>Otto</td> -->
<!-- 		      <td>@mdo</td> -->
<!-- 		    </tr> -->
<!-- 		    <tr> -->
<!-- 		      <th scope="row">2</th> -->
<!-- 		      <td>Jacob</td> -->
<!-- 		      <td>Thornton</td> -->
<!-- 		      <td>@fat</td> -->
<!-- 		    </tr> -->
<!-- 		    <tr> -->
<!-- 		      <th scope="row">3</th> -->
<!-- 		      <td colspan="2">Larry the Bird</td> -->
<!-- 		      <td>@twitter</td> -->
<!-- 		    </tr> -->
		  </tbody>
		</table>
		
	</div>
</body>
</html>