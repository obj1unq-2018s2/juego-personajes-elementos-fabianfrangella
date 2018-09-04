import elementos.*
import armas.*

object luisa {

	var personajeActivo = noHayPersonaje

	method asignarPersonaje(personaje) {
		personajeActivo = personaje
	}

	method aparece(elemento) {
		personajeActivo.encontrar(elemento)
	}

}

object floki {

	var arma

	method encontrar(elemento) {
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()
		}
	}

}

object mario {

	var valorRecolectado = 0
	var property esFeliz = false

	method encontrar(elemento) {
		valorRecolectado += elemento.valorQueOtorga()
		elemento.recibirTrabajo()
		if (valorRecolectado >= 50 || elemento.altura() > 10) {
			esFeliz = true
		}
	// volver a ver si esto esta bien
	}

}

object noHayPersonaje {

// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}

