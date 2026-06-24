public class Main{

    public static void main(String[] args) {
        // Crea unas 30 paginas con contenido ficticio
        Pagina pagina1 = new Pagina("Erase una vez un rey que vivía en un castillo...");
        Pagina pagina2 = new Pagina("En un reino lejano, había una princesa que soñaba con aventuras.");
        Pagina pagina3 = new Pagina("Un día, la princesa decidió explorar el bosque encantado.");
        Pagina pagina4 = new Pagina("En el bosque, encontró un dragón amistoso que necesitaba ayuda.");
        Pagina pagina5 = new Pagina("Juntos, la princesa y el dragón viajaron a través de montañas y ríos.");
        Pagina pagina6 = new Pagina("Descubrieron un tesoro escondido en una cueva secreta.");
        Pagina pagina7 = new Pagina("El tesoro contenía joyas brillantes y antiguos pergaminos.");
        Pagina pagina8 = new Pagina("La princesa decidió compartir el tesoro con su pueblo.");
        Pagina pagina9 = new Pagina("El rey, al enterarse de la aventura, se unió a ellos.");
        Pagina pagina10 = new Pagina("Juntos, enfrentaron desafíos y aprendieron el valor de la amistad.");
        Pagina pagina11 = new Pagina("El dragón se convirtió en el protector del reino.");
        Pagina pagina12 = new Pagina("La princesa y el dragón organizaron una gran fiesta en el castillo.");
        Pagina pagina13 = new Pagina("Los habitantes del reino celebraron la valentía de la princesa.");
        Pagina pagina14 = new Pagina("El rey agradeció al dragón por su ayuda y amistad.");
        Pagina pagina15 = new Pagina("La princesa decidió escribir un libro sobre sus aventuras.");
        Pagina pagina16 = new Pagina("El libro se convirtió en un bestseller en todo el reino.");
        Pagina pagina17 = new Pagina("Los niños del reino leyeron el libro y soñaron con aventuras.");
        Pagina pagina18 = new Pagina("La princesa visitó escuelas para contar su historia.");
        Pagina pagina19 = new Pagina("El dragón enseñó a los niños sobre la importancia de cuidar el medio ambiente.");
        Pagina pagina20 = new Pagina("La princesa y el dragón plantaron árboles en el bosque encantado.");
        Pagina pagina21 = new Pagina("El bosque se volvió más hermoso y lleno de vida.");
        Pagina pagina22 = new Pagina("La princesa aprendió a volar con la ayuda del dragón.");
        Pagina pagina23 = new Pagina("Juntos, exploraron lugares lejanos y desconocidos.");
        Pagina pagina24 = new Pagina("Un día, encontraron un mapa antiguo que conducía a una isla misteriosa.");
        Pagina pagina25 = new Pagina("La isla estaba llena de criaturas mágicas y tesoros ocultos.");
        Pagina pagina26 = new Pagina("La princesa y el dragón ayudaron a una sirena a recuperar su voz perdida.");
        Pagina pagina27 = new Pagina("La sirena les agradeció y les dio un colgante mágico.");
        Pagina pagina28 = new Pagina("El colgante les permitió comunicarse con los animales del mar.");
        Pagina pagina29 = new Pagina("La princesa y el dragón decidieron proteger el océano y sus criaturas.");
        Pagina pagina30 = new Pagina("Juntos, vivieron muchas más aventuras y se convirtieron en leyendas.");

        // Crear libros con diferente cantidad de páginas
        Pagina[] paginasLibro1 = {pagina1, pagina2, pagina3, pagina4};
        Pagina[] paginasLibro2 = {pagina6, pagina7, pagina8, pagina9, pagina10, pagina11, pagina12};
        Pagina[] paginasLibro3 = {pagina13, pagina14, pagina15, pagina16, pagina17, pagina18, pagina19, pagina20};
        Pagina[] paginasLibro4 = {pagina21, pagina22, pagina23, pagina24, pagina25, pagina26, pagina27, pagina28, pagina29, pagina30};
        Pagina[] paginasLibro5 = {pagina1, pagina11, pagina21};
        Pagina[] paginasLibro6 = {pagina2, pagina12, pagina22, pagina3, pagina13, pagina23};
        Pagina[] paginasLibro7 = {pagina4, pagina14, pagina24, pagina5, pagina15, pagina25, pagina6, pagina16, pagina26};

        Libro libro1 = new Libro("Aventuras en el Reino Encantado", "Portada del Libro 1", paginasLibro1, 8);
        Libro libro2 = new Libro("El Tesoro del Dragón", "Portada del Libro 2", paginasLibro2, 9);
        Libro libro3 = new Libro("La Princesa y el Dragón", "Portada del Libro 3", paginasLibro3, 10);
        Libro libro4 = new Libro("Misterios de la Isla Mágica", "Portada del Libro 4", paginasLibro4, 7);
        Libro libro5 = new Libro("Cuentos del Bosque Encantado", "Portada del Libro 5", paginasLibro5, 6);
        Libro libro6 = new Libro("Historias del Mar Profundo", "Portada del Libro 6", paginasLibro6, 5);
        Libro libro7 = new Libro("Leyendas del Reino Perdido", "Portada del Libro 7", paginasLibro7, 4);

        Libro[] libros = {libro1, libro2, libro3, libro4, libro5, libro6, libro7};

        // Muestra libro1 y realiza sus metodos
        libro1.leerPaginaSiguiente();
        libro1.leerPaginaSiguiente();
        libro1.leerPaginaAnterior();
        libro1.leerPaginaSiguiente();
        libro1.leerPaginaSiguiente();
        libro1.leerPaginaSiguiente();
        System.out.println("Buscar palabra 'dragón': " + libro1.buscarPalabra("dragón"));
        System.out.println("Buscar palabra 'princesa': " + libro1.buscarPalabra("princesa"));
        System.out.println("Buscar palabra 'tesoro': " + libro1.buscarPalabra("tesoro"));

    }

    // En la interfaz gráfica, debe mostrar el título del libro, calificación y número de páginas
    // El formato debe ser:

}