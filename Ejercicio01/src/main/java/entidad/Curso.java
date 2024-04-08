package entidad;

public class Curso {
	String codigo, nombre, nivel, profesor;
	
	public Curso(String codigo, String nombre, String nivel, String profesor) {
		super();
		this.codigo = codigo;
		this.nombre = nombre;
		this.nivel = nivel;
		this.profesor = profesor;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getNivel() {
		return nivel;
	}

	public void setNivel(String nivel) {
		this.nivel = nivel;
	}

	public String getProfesor() {
		return profesor;
	}

	public void setProfesor(String profesor) {
		this.profesor = profesor;
	}
	
}
