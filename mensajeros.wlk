object paquete {
	var estaPago= true

	method estaPago(_valor) {
	  estaPago= _valor
	}
	
	method estaPago(){
		return estaPago
	} 

	method puedeSerEntregadoPor(mensajero,destino){
		return estaPago and destino.puedePasar(mensajero) //consulta si el paquete esta pagado y 
	}														//si el mensajero puede pasar al destino
}


object matrix {
  method puedePasar(mensajero) {
	return mensajero.puedeLlamar()
  }
}

object puenteDeBrooklyn {
	method puedePasar(mensajero) {
	return mensajero.pesoActual()<=1000
  }
}

object jeanGray {
  const peso = 65

  method pesoActual(){
	return peso
  } 

  method puedeLlamar(){
	return true
  } 
}

object neo {
	const peso = 0
	var tieneCredito = true

	method pesoActual(){
		return peso
	}

	method tieneCredito(_valor) { 
	  tieneCredito= _valor
	}

	method puedeLlamar(){
		return tieneCredito
	} 
}

object saraConnor{
	var peso = 70
	var vehiculo= camion //podria poner null y al momento del test le asigno el camion?
	
	method peso(_peso) {
		peso=_peso
	}
	
	method pesoActual(){
		return peso + vehiculo.peso()
	} 

	method puedeLlamar(){
		return false
	}

	method vehiculo(_vehiculo){
		vehiculo= _vehiculo
	} 


}

object camion {
	var cantDeAcoplados=0

	method peso() {
	  return 500 + (500 * cantDeAcoplados)
	}

	method cantDeAcoplados(_cantidad) {
	  cantDeAcoplados= _cantidad
	}

}

object moto {
	method peso(){
		return 100
	} 
}
