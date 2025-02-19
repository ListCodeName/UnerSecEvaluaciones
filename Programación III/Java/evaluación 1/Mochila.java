public class Mochila{

}

/**
 * La clase mochila cuenta con los siguientes atributos:
 * - capacidad
 * - peso
 * - Items[] (una lista de item)
 * 
 * Los métodos de la clase son:
 * 
 * Constructor que recibe el peso de la bolsa por parámetro.
 * En base al peso, deberá calcular la capacidad de la misma,
 * la capacidad representa la cantidad de items 'distintos' que puede almacenar.
 * Se calcula que cada 500 de peso puede almacenar 1 item. Redondeandose para arriba.
 * //Usar la función de redondeo Math.ceil()
 * 
 * buscarItem(), recibe por parámetro un item, busca si hay coincidencia con alguno que
 * se haya agregado anteriormente, y envía en caso de encontrarlo, la posición dentro de 
 * la mochila en la que se encuentra.
 * Enviaremos -1 en el caso de que no se encuentre en algún lugar de la mochila.
 * 
 * agregarItem(), recibe por parámetro un item. Debido a políticas del juego, no pueden
 * almacenarse items duplicados, por lo que se acumulan en esa misma posición alterando
 * su cantidad.
 * En el caso de que no se haya agregado anteriormente este item, deberá guardarlo en la 
 * primera posición libre que encuentre de la mochila.
 * En caso de que no haya espacio dentro de la mochila (esté llena) deberá advertir esto
 * mediante un mensaje.
 * 
 * listarItems(), debe mostrar por pantalla la información general de cada item que contenga
 * 
 * 
 */