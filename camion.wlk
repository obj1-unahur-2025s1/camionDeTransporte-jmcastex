import cosas.*


object camion {

    const carga = []
    const tara=1000

    method cargar(algo){
        carga.add(algo)
    }

    method descargar(algo) {
        carga.remove(algo)
    } 

    method pesoTotal() =carga.sum({c=> c.peso()}) + tara

    method elPesoTotalDeLaCargaEsPar() = carga.sum({c=> c.peso()}).even()

    method hayAlgoQuePese(peso) = carga.any({c=> c.peso()==peso}) 

    method obtenerObjetoConPeligrosidad(numero)=carga.find({c=> c.peligrosidad()==numero})

    method obtenerTodosLosObjetoConPeligrosidad(numero)=carga.filter({c=> c.peligrosidad()>numero})
    
    method obtenerLosObjetosMasPeligrososQue(algo) = carga.filter({c=> c.peligrosidad()>algo.peligrosidad()})

    method estaExcedidoDePeso() = self.pesoTotal()> 2500 

    method puedeCircularEnRuta(valorDePeligrosidad) = not self.estaExcedidoDePeso() and not carga.any({c=> c.peligrosidad()>valorDePeligrosidad})

    method cargaMasPesada() =carga.max({c=> c.peso()})  
    
    method cargaQuePeseEntre (unNumero,otroNumero) =carga.any({c=> c.peso().between(unNumero, otroNumero)}) 



}