public class TarjetaSube{

}

/**
 * La tarjeta contará con los siguientes atributos:
 * - número de tarjeta
 * - saldo
 * - cargas[], debe contener espacio para realizar 10 cargas.
 * 
 * Los métodos con los que contará serán:
 * 
 * Constructor de la clase debe recibir el número de tarjeta por parámetro.
 * El saldo empieza en $500 a modo de regalo.
 * 
 * cargarSube(), ingresa por parámetro un monto que no debe ser inferior a los $1000.
 * En el caso de que el monto que se quiere ingresar sea inferior, muestre por pantalla
 * un mensaje para informar el problema.
 * Por otro lado, si está correcto, deberá agregarse en la lista de cargas disponibles.
 * En el caso de tener las 10 cargas completas, mostrará un mensaje por pantalla diciendo
 * "Impacte sus cargas anteriores para poder ingresar una nueva."
 * 
 * impactarSaldo(), suma todas las cargas que existan en el la tarjeta y las adiciona 
 * al saldo.
 * 
 * pagarBoleto(), ingresa por parámetro una palabra que identifica qué tipo de boleto 
 * uno está comprando, cada uno tiene un precio distinto dependiendo de la tarifa vigente:
 * Unico - $900
 * Escolar - $450
 * Jubilado $300
 * La tarjeta tiene un límite de saldo negativo que puede manejar de -$1000
 * Si el saldo existente sobrepasa ese monto negativo con la próxima carga deberá 
 * mostrar por pantalla "Saldo insuficiente".
 * 
 * 
 */