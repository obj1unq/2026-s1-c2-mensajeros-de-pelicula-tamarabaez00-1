object paquete {
	var estaPago= true

	method estaPagado(valor) {
	  estaPago= valor
	}
	
	method estaPago(){
		return estaPago
	} 

	method puedeEntregar_En_(mensajero,destino){
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

	method tieneCredito(valor) { 
	  tieneCredito= valor
	}

	method puedeLlamar(){
		return tieneCredito
	} 
}

object saraConnor{
	var peso = 70
	var vehiculo= camion
	
	method cambiarPeso(_peso) {
	peso=_peso
	}
	
	method pesoActual(){
		return peso + vehiculo.peso()
	} 

	method puedeLlamar(){
		return false
	}

	method vehiculo(){
		return vehiculo
	} 

	method cambiarVehiculo(_vehiculo){
		vehiculo= _vehiculo
	} 


}

object camion {
	var cantDeAcoplados=0

	method peso() {
	  return 500 + (500 * cantDeAcoplados)
	}

	method agregarAcoplados(cantidad) {
	  cantDeAcoplados= cantidad
	}

}

object moto {
	method peso(){
		return 100
	} 
}
