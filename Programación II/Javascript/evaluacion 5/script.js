const worker = new Worker('worker.js');

let tiempoDisplay = document.getElementById("timer");
let clickcounter = document.getElementById("clickcounter");


tiempo = 60;

worker.postMessage("start");


// La función se ejecuta por cada segundo como un bucle
worker.onmessage = function(message){
    
    // Formato de hora 00:00
    tiempoDisplay.innerHTML = tiempo;
}


// Eventos de botones