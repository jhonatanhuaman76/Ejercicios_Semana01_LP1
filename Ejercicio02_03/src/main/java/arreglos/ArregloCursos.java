package arreglos;

import java.util.ArrayList;

import entidad.Curso;

public class ArregloCursos {
	private static ArrayList<Curso> listaCursos = new ArrayList<>();
	
	public static ArrayList<Curso> getListaCursos(){
		return listaCursos;
	}
	
	public static void ingresarCursos(Curso c) {
		listaCursos.add(c);
	}
	
	public static void eliminarCurso(String cod) {
		Curso c = buscarCurso(cod);
		
		if(c != null) {
			listaCursos.remove(c);
		}
	}
	
	public static void actualizarCurso(Curso c) {
		Curso nc = buscarCurso(c.getCodigo());
		
		if(nc!=null) {
			nc.setNombre(c.getNombre());
			nc.setNivel(c.getNivel());
			nc.setProfesor(c.getProfesor());
		}
	}
	
	public static Curso buscarCurso(String cod) {
		for(Curso c: listaCursos)
			if(c.getCodigo().equals(cod))
				return c;
		return null;
	}
}
