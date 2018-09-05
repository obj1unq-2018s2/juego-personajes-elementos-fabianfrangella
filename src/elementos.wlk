object castillo {

	var property defensa = 150

	method recibirAtaque(potencia) {
		defensa -= potencia
	}

	method altura() = 20

	method valorQueOtorga() = defensa / 5

	method recibirTrabajo() {
		defensa = (defensa + 20).min(200)
	}

}

object aurora {

	var property altura = 1 // metros
	var property vive = true

	method recibirAtaque(potencia) {
		vive = potencia < 10 // si es menor que 10 sigue viva
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

