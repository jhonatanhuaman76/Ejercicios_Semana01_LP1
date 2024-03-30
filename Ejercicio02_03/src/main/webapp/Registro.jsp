<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="java.awt.Color"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>


 

 
<!-- Este es el link de los estilos css de registro -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<!-- Este es el link de los funcionalidades JavaScript de registro -->


<link rel="Stylesheet "type="text/css" href="Estilos/registro.css">
 
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center><h1>REGISTRO DE CURSOS</h1></center>

<form class="row g-3">
  <div class="mx-auto p-2" style="width: 300px;">
    <label for="inputPassword4" class="form-label registro-label">Código</label>
    <input type="password" class="form-control" id="inputPassword4" placeholder="ingrese su código">
  </div>
  
  <div class="mx-auto p-2" style="width: 300px;">
    <label for="inputPassword4" class="form-label registro-label">Nombre</label>
    <input type="text" class="form-control" id="inputPassword4" placeholder="ingrese su nombre">
  </div>
  
  <div class="mx-auto p-2" style="width: 300px;">
    <label for="inputPassword4" class="form-label registro-label">Nivel</label>
    <input type="text" class="form-control" id="inputPassword4" placeholder="ingrese el nivel">
  </div>
  
  <div class="mx-auto p-2" style="width: 300px;">
    <label for="inputPassword4" class="form-label registro-label">Profesor</label>
    <input type="text" class="form-control" id="inputPassword4" placeholder="nombre de profesor">
  </div>
  
  </form>
 
	<div class="text-center mt-4">
	<button type="button" class="btn btn-outline-primary">Registrar Datos</button>
	</div>
  
  
<table  class="table w-75 m-auto mt-5">
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
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
   	  <td>
      	<button type="button" class="btn btn-primary">Editar</button>
      	<button type="button" class="btn btn-danger">Eliminar</button>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>@fat</td>
      <td>
      	<button type="button" class="btn btn-primary">Editar</button>
      	<button type="button" class="btn btn-danger">Eliminar</button>
      </td>

    </tr>
    <tr>
      <th scope="row">3</th>
     
      <td>@twitter</td>
      <td>@twitter</td>
      <td>@fat</td>
      <td>@fat</td>
   	  <td>
      	<button type="button" class="btn btn-primary">Editar</button>
      	<button type="button" class="btn btn-danger">Eliminar</button>
      </td>
       
    </tr>
  </tbody>
</table>
  
  


</body>
</html>