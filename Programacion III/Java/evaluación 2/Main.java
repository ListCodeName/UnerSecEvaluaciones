public class Main{
    public static void main(String[] args) {
        // Crear algunas materias
        Materia geografia = new Materia("Geografía", 12345, new int[]{8, 7, 9});
        Materia matematicas = new Materia("Matemáticas", 67890, new int[]{1, 3, 7, 8, 9});
        Materia historia = new Materia("Historia", 11223, new int[]{5, 6, 7, 7});
        Materia fisica = new Materia("Física", 33445, new int[]{9, 8, 10});
        Materia quimica = new Materia("Química", 55667, new int[]{7, 8, 6});
        Materia literatura = new Materia("Literatura", 77889, new int[]{3, 3});
        Materia biologia = new Materia("Biología", 99001, new int[]{6, 7, 8});
        Materia filosofia = new Materia("Filosofía", 22334, new int[]{7, 6, 10});
        Materia educacionFisica = new Materia("Educación Física", 44556, new int[]{9, 8, 10, 9});
        Materia arte = new Materia("Arte", 66778, new int[]{8, 7, 9});
        Materia musica = new Materia("Música", 88990, new int[]{10, 10, 9, 10, 10, 9});
        Materia tecnologia = new Materia("Tecnología", 10112, new int[]{7, 8, 9});
        Materia filosofiaModerna = new Materia("Filosofía Moderna", 12134, new int[]{8});
        Materia economia = new Materia("Economía", 14156, new int[]{2, 3, 4});
        Materia psicologia = new Materia("Psicología", 16178, new int[]{7, 6, 8});
        Materia sociologia = new Materia("Sociología", 18190, new int[]{7, 6, 5});
        Materia antropologia = new Materia("Antropología", 20212, new int[]{8, 8, 8});
        Materia derecho = new Materia("Derecho", 22234, new int[]{6, 7, 8});
        Materia administracion = new Materia("Administración", 24256, new int[]{4, 4, 8});
        Materia contabilidad = new Materia("Contabilidad", 26278, new int[]{6, 6, 7});
        Materia marketing = new Materia("Marketing", 28290, new int[]{6, 7, 8});
        Materia logistica = new Materia("Logística", 30312, new int[]{7, 8, 9});
        Materia recursosHumanos = new Materia("Recursos Humanos", 32334, new int[]{8, 9, 7});
        Materia finanzas = new Materia("Finanzas", 34356, new int[]{5, 1, 1});
        Materia estadistica = new Materia("Estadística", 36378, new int[]{3, 4, 3});


        // Crear algunos talleres String nombre, int codigo, int[] notas
        Taller programacion = new Taller("Taller de Programación", 11111, new int[]{3, 4, 3} ,10);
        Taller diseno = new Taller("Taller de Diseño", 11112, new int[]{7, 7, 7} ,8);
        Taller fotografia = new Taller("Taller de Fotografía",11113, new int[]{8, 5, 9} , 12);
        Taller escrituraCreativa = new Taller("Taller de Escritura Creativa", 11114, new int[]{7, 4, 3} ,12);
        Taller cocina = new Taller("Taller de Cocina", 11115, new int[]{9, 10, 10} ,13);
        Taller musica = new Taller("Taller de Música", 11121, new int[]{6, 7, 8} ,12);
        Taller arte = new Taller("Taller de Arte", 11131, new int[]{6, 5, 4} ,13);
        Taller deporte = new Taller("Taller de Deporte", 11133, new int[]{7, 3, 6} ,11);
        Taller marketingDigital = new Taller("Taller de Marketing Digital", 11511, new int[]{1, 1, 2} ,9);
        Taller liderazgo = new Taller("Taller de Liderazgo", 12211, new int[]{10, 10, 10} ,6);
        Taller fotografiaAvanzada = new Taller("Taller de Fotografía Avanzada", 15561, new int[]{8, 8, 8} ,8);
        Taller programacionAvanzada = new Taller("Taller de Programación Avanzada", 19551, new int[]{8, 7, 7} ,15);
        Taller disenoGrafico = new Taller("Taller de Diseño Gráfico", 19951, new int[]{9, 8, 9} ,13);
        Taller gestionDeProyectos = new Taller("Taller de Gestión de Proyectos", 20111, new int[]{8, 5, 6} ,10);
        Taller comunicacionEfectiva = new Taller("Taller de Comunicación Efectiva", 21681, new int[]{6, 6, 10} ,12);

        // Crear un alumno con las materias y talleres
        Alumno juan = new Alumno("Juan", "Pérez", 20, new Materia[]{geografia, matematicas}, new Taller[]{programacion, diseno});
        Alumno maria = new Alumno("María", "Gómez", 22, new Materia[]{historia, fisica, quimica}, new Taller[]{fotografia, escrituraCreativa});
        Alumno pedro = new Alumno("Pedro", "López", 21, new Materia[]{literatura, biologia, filosofia}, new Taller[]{cocina, musica});
        Alumno ana = new Alumno("Ana", "Martínez", 19, new Materia[]{educacionFisica, arte, musica}, new Taller[]{arte, deporte});
        Alumno carlos = new Alumno("Carlos", "Fernández", 23, new Materia[]{tecnologia, filosofiaModerna, economia}, new Taller[]{marketingDigital, liderazgo});
        Alumno laura = new Alumno("Laura", "Ramírez", 20, new Materia[]{psicologia, sociologia, antropologia}, new Taller[]{fotografiaAvanzada, programacionAvanzada});
        Alumno juanita = new Alumno("Juanita", "Sánchez", 18, new Materia[]{derecho, administracion, contabilidad}, new Taller[]{disenoGrafico, gestionDeProyectos});

        // Imprimir información del alumno
        System.out.println(juan.toString());
        System.out.println(maria.toString());
        System.out.println(pedro.toString());
        System.out.println(ana.toString());
        System.out.println(carlos.toString());
        System.out.println(laura.toString());
        System.out.println(juanita.toString());
        
    }
}