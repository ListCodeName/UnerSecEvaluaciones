import java.util.Random;

public class Pagina{
    private String contenido;
    private int numero;

    public Pagina(String contenido) {
        this.contenido = contenido;
        this.numero = new Random().nextInt(1000);
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    // Debe devolver el contenido de la página con el siguiente formato:
    // <<< Página 1 >>>
    // 
    // Erase una vez un rey que vivía en un castillo...
    @Override
    public String toString() {
        
    }

}