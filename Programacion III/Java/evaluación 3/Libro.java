public class Libro{
    private String titulo;
    private Pagina[] paginas;
    private int calificacion;
    private int indicePaginaActual;

    public Libro(String titulo, String portada, Pagina[] paginas, int calificacion) {
        this.titulo = titulo;
        this.portada = portada;
        this.paginas = paginas;
        this.calificacion = calificacion;
        indicePaginaActual = 0;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getCalificacion() {
        return calificacion;
    }

    // La calificación debe ser un número entre 1 y 10
    // De otro modo debe advertir al usuario el error
    public void setCalificacion(int calificacion) {
        this.calificacion = calificacion;
    }

    // Muestra por pantalla la página siguiente a la que se encuentra si es que existe
    // Debe actualizar el índice de la página actual
    // En el caso que no exista una página siguiente, debe advertir al usuario
    public void leerPaginaSiguiente() {
        
    }

    // Muestra por pantalla la página anterior a la que se encuentra si es que existe
    // Debe actualizar el índice de la página actual
    // En el caso que no exista una página anterior, debe advertir al usuario
    public Pagina leerPaginaAnterior() {
        
    }

    // Busca una palabra en el contenido de todas las páginas del libro
    // Devuelve true si la palabra se encuentra en alguna de las páginas, false en caso
    // Pueden utilizar el método contains() de la clase String
    public boolean buscarPalabra(String palabra) {
        
    }
}