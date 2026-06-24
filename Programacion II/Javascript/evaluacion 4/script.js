const worker = new Worker('worker.js');

let tiempoDisplay = document.getElementById("tiempo");
let tiempoFormato = document.getElementById("formato");



var tiempo = 0;
var horas = 0;
var minutos = 0;
var segundos = 0;



worker.postMessage("start");


// La función se ejecuta por cada segundo como un bucle
worker.onmessage = function(message){
    tiempo++;
    // Formato de hora 00:00:00
    tiempoDisplay.innerHTML = tiempo;
}


// Eventos de botones