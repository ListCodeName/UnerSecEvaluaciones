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

plus.addEventListener("click", ()=>{
    if(hambre < 100){
        hambre++;
        ham.innerHTML = hambre + "%";
    }
});

worker.onmessage = function(message){

    if (vida > 0){
        tiempo += message.data;
    
        if(tiempo == 30){
            monstruo.src = "scripts/tamagochi-l2.gif";
            nivel++;
        }

        if(tiempo == 60){
            monstruo.src = "scripts/tamagochi-l3.gif";
            nivel++;
        }

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