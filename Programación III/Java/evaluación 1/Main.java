public class Main{
    public static void main(String[] args) {
        // Crear una mochila con un peso de 1000
        Mochila mochila = new Mochila(1500);
        
        // Crear algunos items
        Item item1 = new Item("Espada", "Espada de acero", 200, 1);
        Item item2 = new Item("Escudo", "Escudo de madera", 300, 1);
        Item item3 = new Item("Poción", "Poción curativa", 100, 5, 300);
        Item item4 = new Item("Poción", "Poción curativa menor", 100, 5, 100);
        
        // Agregar items a la mochila
        mochila.agregarItem(item1);
        mochila.agregarItem(item2);
        mochila.agregarItem(item3);
        mochila.agregarItem(item4);
        
        // Listar items en la mochila
        mochila.listarItems();
    }
}