const worker = new Worker('worker.js');

let descrip = document.getElementById("descripcion");
let ham = document.getElementById("hambre");
let life = document.getElementById("vida");
let plus = document.getElementById("plus");
let minus = document.getElementById("minus");
let monstruo = document.getElementById("tama");

var vida = 100;
var hambre = 100;
var salud = 100;
var tiempo = 0;
var nivel = 1;


descrip.addEventListener("click", (event)=>{
    worker.postMessage("start");
});

// message.data obtiene un 1 y la función se ejecuta por cada segundo como un bucle
worker.onmessage = function(message){
    
}

//Función para bajar el % de hambre
function bajarHambre(){
    let coeficiente = (((Math.floor(Math.random() * 10)) % nivel) + 1) * 2;
    


}

//Evento botón sumar