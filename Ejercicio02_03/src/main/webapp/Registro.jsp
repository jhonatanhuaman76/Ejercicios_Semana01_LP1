<%@page import="arreglos.ArregloCursos"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="java.awt.Color"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<% 
	pageContext.setAttribute("listaCursos", ArregloCursos.getListaCursos());
%>

<center><h1>REGISTRO DE CURSOS</h1></center>

<form class="row g-3" action="operaciones.jsp" method="post" id="form-curso">
  <div class="mx-auto p-2" style="width: 300px;">
    <label for="inputPassword4" class="form-label registro-label">Código</label>
    <input type="text" class="form-control" id="input-codigo" name="txtCodigo" placeholder="ingrese su código" required>
  </div>
  
  <div class="mx-auto p-2" style="width: 300px;">
    <label for="inputPassword4" class="form-label registro-label">Nombre</label>
    <input type="text" class="form-control" id="input-nombre" name="txtNombre" placeholder="ingrese su nombre" required>
  </div>
  
  <div class="mx-auto p-2" style="width: 300px;">
    <label for="inputPassword4" class="form-label registro-label">Nivel</label>
    <input type="text" class="form-control" id="input-nivel" name="txtNivel" placeholder="ingrese el nivel" required>
  </div>
  
  <div class="mx-auto p-2" style="width: 300px;">
    <label for="inputPassword4" class="form-label registro-label">Profesor</label>
    <input type="text" class="form-control" id="input-profesor" name="txtProfesor" placeholder="nombre de profesor" required>
  </div>
  
	<div class="text-center mt-4">
		<button type="submit" class="btn btn-outline-primary" name="accion" value="btnEnviar" id="btnCursos">Registrar Datos</button>
	</div>
  </form>
 
  
  
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
  	<c:forEach items="${listaCursos}" var="c" varStatus="loop">
  		<tr scope="row">
  			<td>${loop.index + 1}</td>
  			<td>${c.codigo}</td>
		  	<td>${c.nombre}</td>
		  	<td>${c.nivel}</td>
		  	<td>${c.profesor}</td>
		  	<td>
      			<button 
      				type="button" 
      				class="btn btn-primary btn-editar"
      				data-codigo="${c.codigo}"
			  		data-nombre="${c.nombre}"
			  		data-nivel="${c.nivel}"
			  		data-profesor="${c.profesor}"
      			>
      				Editar
      			</button>
      			<button 
      				type="button" 
      				class="btn btn-danger btn-eliminar"
      				data-codigo="${c.codigo}"
      			>
      				Eliminar
      			</button>
      		</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>

<script type="text/javascript">
	const btnCursos = document.querySelector("#btnCursos");
	const btnEditarAll = document.querySelectorAll(".btn-editar");
	const btnEliminarAll = document.querySelectorAll(".btn-eliminar");
	const inputCodigo = document.querySelector("#input-codigo");
	const inputNombre = document.querySelector("#input-nombre");
	const inputNivel = document.querySelector("#input-nivel");
	const inputProfesor = document.querySelector("#input-profesor");
	const formCurso = document.querySelector("#form-curso");
	
	btnEditarAll.forEach(btn=>{
		btn.addEventListener("click", (e)=>{
			const d = e.target.dataset;
	        inputCodigo.readOnly = true;
	        
	        btnCursos.textContent = "Actualizar Datos"
	        btnCursos.value = "btnActualizar"
			
	        inputCodigo.value = d.codigo;
	        inputNombre.value = d.nombre;
	        inputNivel.value = d.nivel;
	        inputProfesor.value = d.profesor;
		});
	});
	
	btnEliminarAll.forEach(btn=>{
		btn.addEventListener("click", (e)=>{
			const d = e.target.dataset;
			
	        const confirmacion = confirm("¿Desea eliminar el curso?");
	        
	        if (!confirmacion) {
	            event.preventDefault();
	            return;
	        }
	        
	        window.location.href = "operaciones.jsp?accion=btnEliminar&txtCodigo="+d.codigo;
		});
	});
	
	btnCursos.addEventListener("click", (e)=>{
		if(btnCursos.value == "btnActualizar"){
			const confirmacion = confirm("¿Desea guardar cambios?");

	        if (!confirmacion) {
	            event.preventDefault();
	        }
		}
	});
</script>

</body>
</html>