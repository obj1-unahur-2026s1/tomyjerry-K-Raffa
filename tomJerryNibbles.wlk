object tom {

    var energia = 50.0

    method velocidadMaxima() = 5 + energia / 10

    method correr(cantidadMetros) {
        energia -= cantidadMetros / 2
    }

    method comer(raton) {
        energia += 12 + raton.peso()
    }

    method puedeAtrapar(distancia) = distancia / 2 < energia

    method atrapar(raton, distancia) {
        if (self.puedeAtrapar(distancia)) {
            self.correr(distancia)
            self.comer(raton)
        }
    }
}

object jerry {
    var edad = 2

    method peso() = edad * 20

    method cumplirAnios() {
        edad += 1
    }
}

object nibbles {
    method peso() = 35
}

object speedy {
    method peso() = 15
}