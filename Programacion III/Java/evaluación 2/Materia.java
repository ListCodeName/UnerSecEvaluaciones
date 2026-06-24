public class Materia {
    private String nombre;
    private int codigo;
    private int[] notas;

    public Materia(String nombre, int codigo, int[] notas) {
        this.nombre = nombre;
        this.codigo = codigo;
        this.notas = notas;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    // Devuelve el promedio de las notas
    public int getPromedio(){
        return 0;
    }

    //Formato: Geografía (12345) - Nota promedio: 8
    public String toString() {
        
        return "";
    }
}