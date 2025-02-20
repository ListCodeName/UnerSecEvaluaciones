self.onmessage = function(message){
    setInterval(()=>{   
        postMessage(1);
    }, 1000);
    
}