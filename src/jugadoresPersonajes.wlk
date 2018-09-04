import elementos.*
import armas.*

object luisa {

	var property personajeActivo = noHayPersonaje

	method aparece(elemento) {
		personajeActivo.encontrar(elemento)
	}

}

object floki {

	var property arma

	method encontrar(elemento) {
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()
		}
	}

}

object mario {

	var property valorRecolectado = 0
	var property esFeliz = false

	method encontrar(elemento) {
		valorRecolectado += elemento.valorQueOtorga()
		elemento.recibirTrabajo()
		esFeliz = (valorRecolectado >= 50 || elemento.altura() > 10)
	}

}

object noHayPersonaje {

// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}

