const worker = new Worker('worker.js');

let descrip = document.getElementById("descripcion");
let ham = document.getElementById("hambre");
let life = document.getElementById("vida");

var vida = 100;
var hambre = 100;
var salud = 100;
var tiempo = 0;
var nivel = 1;


descrip.addEventListener("click", (event)=>{
    worker.postMessage("start");
});

worker.onmessage = function(message){

    if (vida > 0){
        tiempo += message.data;
    
        if(tiempo % 2 == 1){
            bajarHambre();
        }
    }
    
}

function bajarHambre(){
    let coeficiente = ((Math.floor(Math.random() * 10)) % nivel) + 1;
    if(hambre > 0){
        hambre -= coeficiente;
        ham.innerHTML = hambre + "%";
    }else{
        vida--;
        if(vida == 0){
            document.write("GAME OVER");
        }else{
            life.innerHTML = vida + "%";
        }
    }



}