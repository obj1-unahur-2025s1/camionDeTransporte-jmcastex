object knightRider {
    
    method peso() =500 

    method peligrosidad() =10 


}


object bumblebee {

    var esUnAuto=true

    method peso() =800 

    method peligrosidad() =if(esUnAuto) 15 else 30 

    method transformarse(){
        esUnAuto=not esUnAuto
    } 
}

object paqueteDeLadrillos {

    var property ladrillos=1 

    method peso() =ladrillos*2 

    method peligrosidad() =2 

 
}


object arenaAGranel {
    var property peso =2 

    method peligrosidad() =1 


}

object bateriaAntiaerea {

    var estaConMisiles=true
      
    method peso() =if (estaConMisiles)300 else 200 

    method peligrosidad() =if (estaConMisiles)100 else 0 

    method ponerMisiles() {
      estaConMisiles=true
    } 

    method quitarMisiles(){
        estaConMisiles=false
    }


}

object contenedorPortuario {

    const cosas=[]

    method agregar(algo){
        cosas.add(algo)
    } 

    method quitar(algo){
        cosas.remove(algo)
    } 
      
    method peso() =100 + cosas.sum({c=> c.peso()}) 

    method peligrosidad() =if(cosas.isEmpty()) 0 else cosas.max({c=> c.peligrosidad()}) 

 
}

object residuosRadioactivos {
    
    var property peso =10 

    method peligrosidad() =200 


}

object embalajeDeSeguridad {
    var objetoEnvuelto=null

    method envolver(algo) {
      objetoEnvuelto=algo
    }
      
    method peso() =objetoEnvuelto.peso() 

    method peligrosidad() =objetoEnvuelto.peligrosidad()/2 


}