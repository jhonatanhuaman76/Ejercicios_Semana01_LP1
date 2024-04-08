<%@page import="arreglos.ArregloCursos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Ejercicio 01</title>
</head>
<body>
	<% 
	pageContext.setAttribute("listaCursos", ArregloCursos.getListaCursos());
	%>
	<div class="d-flex gap-4 p-4">
	
		<form class="w-50" action="operaciones.jsp" method="post" id="form-curso">
			<h3>Registro Cursos</h3>
			 <div class="mb-3 ms-3">
			   <label for="input-codigo" class="form-label">Código</label>
			   <input type="text" class="form-control" id="input-codigo" name="txtCodigo" required>
			 </div>
			 <div class="mb-3 ms-3">
			   <label for="input-nombre" class="form-label">Nombre</label>
			   <input type="text" class="form-control" id="input-nombre" name="txtNombre" required>
			 </div>
			 <div class="mb-3 ms-3">
			   <label for="input-nivel" class="form-label">Nivel</label>
			   <input type="text" class="form-control" id="input-nivel" name="txtNivel" required>
			 </div>
			 <div class="mb-3 ms-3">
			   <label for="input-profesor" class="form-label">Profesor</label>
			   <input type="text" class="form-control" id="input-profesor" name="txtProfesor" required>
			 </div>
			 
			 <div class="mb-3 ms-3">
				 <button type="submit" class="btn btn-primary" name="accion" value="btnEnviar" id="btnEnviar")>Enviar</button>
				 <button type="submit" class="btn btn-primary" name="accion" value="btnActualizar" id="btnActualizar">Actualizar</button>
				 <button type="submit" class="btn btn-warning" name="accion" value="btnListar" id="btnListar">Listar</button>
				 <button type="submit" class="btn btn-danger" name="accion" value="btnEliminar" id="btnEliminar">Eliminar</button>			 
			 </div>
		</form>
		<div class="container mt-5 w-50" style=" height:400px;overflow:auto">
			<table class="table table-striped">
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
				<c:forEach items="${listaCursos}" var="c" varStatus="loop">
		  			<tr scope="row">
		  				<td>${loop.index + 1}</td>
		  				<td>${c.codigo}</td>
		  				<td>${c.nombre}</td>
		  				<td>${c.nivel}</td>
		  				<td>${c.profesor}</td>
		  				<td>
		  					<img 
			  					class="btn-select" 
			  					src="assets/select.svg" 
			  					style="cursor:pointer;" 
			  					data-codigo="${c.codigo}"
			  					data-nombre="${c.nombre}"
			  					data-nivel="${c.nivel}"
			  					data-profesor="${c.profesor}"
		  					>
		  				</td>
		  			</tr>
		  		</c:forEach>
			  </tbody>
			</table>	
		</div>		
	</div>
	
	<!-- Librería de Sweet Alert 2  --> 
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	<script type="text/javascript">
		const btnEditAll = document.querySelectorAll(".btn-select");
		const btnEliminar = document.querySelector("#btnEliminar"); 
		const btnActualizar = document.querySelector("#btnActualizar");
		const btnEnviar = document.querySelector("#btnEnviar");
		const inputCodigo = document.querySelector("#input-codigo");
		const inputNombre = document.querySelector("#input-nombre");
		const inputNivel = document.querySelector("#input-nivel");
		const inputProfesor = document.querySelector("#input-profesor");
		const formCurso = document.querySelector("#form-curso");
		
		btnEditAll.forEach(btn=>{
			btn.addEventListener("click", (e)=>{
				const d = e.target.dataset;
		        inputCodigo.readOnly = true;
		        btnEnviar.disabled = true;
				
		        inputCodigo.value = d.codigo;
		        inputNombre.value = d.nombre;
		        inputNivel.value = d.nivel;
		        inputProfesor.value = d.profesor;
			});
		});
		
		btnEliminar.addEventListener("click", function(event) {
	        const confirmacion = confirm("¿Desea eliminar el curso?");
	        
	        if (!confirmacion) {
	            event.preventDefault();
	        }
	        
	    });

	    btnActualizar.addEventListener("click", function(event) {
	        const confirmacion = confirm("¿Desea guardar cambios?");

	        if (!confirmacion) {
	            event.preventDefault();
	        }
	    });
	</script>
</body>
</html>