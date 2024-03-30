<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="estilos/estilos01.css">
<head>
<meta charset="ISO-8859-1">
<title>EJERCICIO 01</title>
</head>
<body>
 
<div class="titulo">
	<h1>Cursos Disponibles</h1> <button type="button" class="btn btn-secondary">Nuevos</button>
</div>

<table class="table table-success table-striped">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Código</th>
      <th scope="col">Nombre</th>
      <th scope="col">Nivel</th>
      <th scope="col">Profesor</th>
      <th scope="col">Acciones</th>
    </tr>
  </thead>
  <tbody class="table-group-divider">
    <tr>
      <th scope="row">1</th>
      <td>2414</td>
      <td>Seguridad de aplicaciones</td>
      <td>Intermedio</td>
      <td>José Gómez</td>
      <td>
      	<button type="button" class="btn btn-primary">Editar</button>
      	<button type="button" class="btn btn-danger">Eliminar</button>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>1956</td>
      <td>Desarrollo de Aplicaciones Móviles I</td>
      <td>Avanzado</td>
      <td>Diana Vera</td>
      <td>
      	<button type="button" class="btn btn-primary">Editar</button>
      	<button type="button" class="btn btn-danger">Eliminar</button>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>7878</td>
      <td>Programación Orientada a Objetos I</td>
      <td>Intermedio</td>
      <td>Julio Sanchez</td>
      <td>
      	<button type="button" class="btn btn-primary">Editar</button>
      	<button type="button" class="btn btn-danger">Eliminar</button>
      </td>
    </tr>
  </tbody>
</table>
</body>
</html>