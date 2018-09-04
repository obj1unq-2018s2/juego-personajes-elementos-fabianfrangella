object ballesta {

	var flechas = 10

	method estaCargada() = flechas >= 1

	method registrarUso() {
		flechas -= 1
	}

	method potencia() = 4

}

object jabalina {

	var cargada = true

	method estaCargada() = cargada

	method registrarUso() {
		cargada = false
	}

	method potencia() = 30

}

