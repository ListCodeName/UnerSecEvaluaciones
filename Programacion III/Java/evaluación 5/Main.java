public class Main{
    public static void main(String[] args){
        Producto p1 = new Producto("Tomate Perita Lata 200g", 1300, 5, "27/10/2026");

        System.out.println(p1.toString());

        Producto p2 = new Producto("Arroz Dos Hermanos 1kg", 2500, 2, "27/5/2026");

        Ticket t1 = new Ticket("27/10/2025");
        t1.agregarProducto(p1);
        t1.agregarProducto(p2);

        System.out.println("Total: " + t1.calcularTotal());

        t1.eliminarProducto(p2);

        t1.imprimirTicket();
    }
}