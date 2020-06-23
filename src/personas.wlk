import marcas.*
import jarras.*

class Persona {

    var property peso = 0
    var property jarrasCompradas = []
    var property leGustaMusicaTradicional = false
    var property nivelDeAguante = 0
    var property nacionalidad

    method estaEbria() = (self.alcoholIngerido() * peso) > nivelDeAguante

    //method alcoholIngerido() { return jarrasCompradas.sum({ alcohol => alcohol}) }

    method legusta(unaMarca) = self.nacionalidad().leGusta(unaMarca)
}

object belgas {
    method leGusta(unaMarca) {
        return unaMarca.gramosDeLupusPorLitro() > 4
    }
    
}

object checos {

    method leGusta(unaMarca) = unaMarca.graduacion() > 8

}

object alemanes {

    method leGusta(unaMarca) = true

}
