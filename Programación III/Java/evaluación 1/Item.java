public class Item{

}

/**
 * La clase Item cuenta con los siguientes atributos:
 * - Nombre
 * - Descripción
 * - Peso
 * - Cantidad
 * 
 * Los métodos de la clase son:
 * 
 * Constructor con parametros para cada uno de los atributos.
 * 
 * setCantidad(), recibe una cantidad del mismo item para actualizar este valor.
 * La cantidad no puede superar los 999, ya que es el límite que hay del mismo objeto.
 * En caso de que con la cantidad ingresada supere el valor 999, éste debe setearse
 * con el valor máximo. Ej: si tuviéramos 500 y se agregan 600, sumados dan 1100, pero debe
 * quedar guardado como 999, ignorando el exceso.
 * En el caso de que se exceda esta cantidad al llamar a este método, muestre por pantalla
 * un mensaje diciendo "Capacidad máxima alcanzada para este Item"
 * 
 * getCantidad(), devuelve la cantidad.
 * 
 * equals(), recibe otro item por parámetro y los compara para saber si son iguales o no.
 * El criterio para que sean iguales es que subombre y peso coincidan.
 * 
 * toString(), devuelve un escrito con el siguiente formato:
 * Item: Topacio (cant. 99)
 * 
 */