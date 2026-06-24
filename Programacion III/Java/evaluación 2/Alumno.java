public class Alumno{
    private String nombre;
    private String apellido;
    private int edad;
    private int horasTaller = 0;
    private Materia[] materias;
    private Taller[] talleres;

    public Alumno(String nombre, String apellido, int edad, Materia[] materias, Taller[] talleres) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.materias = materias;
        this.talleres = talleres;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    // Devuelve el promedio del promedio de todas las materias que cursa
    public int calcularPromedioGeneral(){
        return 0;
    }

    // Devuelve la suma total de horas de los talleres que aprobó
    public int calcularHorasTaller(){
        return 0;
    }

    // Un Alumno se aprueba si el promedio general es mayor o igual a 6
    // Además, debe tener al menos 20 horas de Taller aprobadas
    public boolean estaAprobado(){
        return false;
    }

    // Alumno: Juan Pérez, 20 años
    // Materias: [Geografía (12345) - Nota promedio: 8, Matemáticas (67890) - Nota promedio: 7]
    // Promedio general: 7
    // Talleres: [Taller de Programación (3 horas), Taller de Diseño (2 horas)]
    // Horas de taller aprobadas: 5
    // Estado: Aprobado
    public String toString(){
        return "";
    }
}

