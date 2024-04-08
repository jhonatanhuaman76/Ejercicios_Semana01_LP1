<%@page import="arreglos.ArregloCursos"%>
<%@page import="entidad.Curso"%>


<%-- Validar si un campo está vacío --%>
<%! 
	boolean validarCamposVacios(String... campos){
		for(String campo: campos)
			if(campo == null || campo.trim().isEmpty())
				return false;
			
		return true;
	}
	
%>
<% 
	String codigo, nombre, nivel, profesor, accion;
	accion = request.getParameter("accion");
	
	if(accion != null){
		codigo = request.getParameter("txtCodigo");
		nombre = request.getParameter("txtNombre");
		nivel = request.getParameter("txtNivel");
		profesor = request.getParameter("txtProfesor");
		
		if(accion.equals("btnEnviar") && validarCamposVacios(codigo, nombre, nivel, profesor)){	
			Curso c = new Curso(codigo, nombre, nivel, profesor);
			ArregloCursos.ingresarCursos(c);
		}else if(accion.equals("btnActualizar") && validarCamposVacios(codigo, nombre, nivel, profesor)){
			Curso c = new Curso(codigo, nombre, nivel, profesor);
			ArregloCursos.actualizarCurso(c);
		} else if(accion.equals("btnEliminar") && validarCamposVacios(codigo)){
			ArregloCursos.eliminarCurso(codigo);
		}
		
		response.sendRedirect("Registro.jsp");
	}
%>