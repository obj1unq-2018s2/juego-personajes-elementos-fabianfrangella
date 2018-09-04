object castillo {

	var property altura = 20 // metros
	var property defensa = 150

	method recibirAtaque(potencia) {
		defensa -= potencia
	}

	method valorQueOtorga() = defensa / 5

	method recibirTrabajo() {
		if (defensa < 180) {
			defensa += 20
		} else {
			defensa = 200
		}
	}

}

object aurora {

	var property altura = 1 // metros
	var property vive = true

	method recibirAtaque(potencia) {
		if (potencia > 10) {
			vive = false
		}
	}

	method valorQueOtorga() = 15

	method recibirTrabajo() {
	}

}

object tipa {

	var property altura = 8 // metros

	method recibirAtaque(potencia) {
	}

	method valorQueOtorga() = altura * 2

	method recibirTrabajo() {
		altura += 1
	}

}

