class Marca {
	var property gramosDeLupusPorLitro = 0
	var property paisOrigen = ""
	var property porcentajeAlcohol = 10
	var property volumen = 100
	method graduacion() = 10 / 100 
	
}

class CervezaRubia inherits Marca {

    override method graduacion() = porcentajeAlcohol / volumen

}

class CervezaNegra inherits Marca {
    var property valor = 2
    override method graduacion() = graduacionReglamentaria.valorPermitido().min(gramosDeLupusPorLitro * valor)

}


class CervezaRoja inherits CervezaNegra {
    override method valor() = 1.25
}

object graduacionReglamentaria {
    var property valorPermitido = 10
} 