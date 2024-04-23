object senorGimenez {
	var dinero = 3000000
	method pagarA(empleado){
		dinero = dinero - empleado.sueldo()
		empleado.cobrarSueldo()
	}
	method dineroActual() = dinero
}

object galvan {
	var totalDinero = 0
	var totalDeuda = 0
	var sueldo = 150000
	method sueldo() = sueldo
	method cobrarSueldo(){
		totalDinero = 0.max((totalDinero + sueldo) - totalDeuda) 
		totalDeuda = 0.max(totalDeuda - sueldo)
	}
	method cambiarSueldoA(nuevoSueldo){
		sueldo = nuevoSueldo
	} 
	method totalDinero() = totalDinero
	
	method gastar(gasto){
		totalDinero = totalDinero - gasto
		totalDeuda = 0.max(totalDeuda + (totalDinero * (-1)))
		totalDinero = 0.max(totalDinero)
	} 
	method totalDeuda() = totalDeuda
	method totalCobrado(){}
}

object baigorria {
	var totalDinero = 0
	var totalDineroCobrado = 0
	const sueldo = empanadas.precioEmpanada() * empanadas.empanadasVendidas()
	method sueldo() = sueldo
	method cobrarSueldo(){
		totalDinero =  totalDinero + sueldo
	}
	method totalCobrado(){
		totalDineroCobrado = totalDineroCobrado + self.sueldo()
	}
}

object empanadas {
	var empanadasVendidas = 0
	method empanadasVendidas() = empanadasVendidas
	method precioEmpanada() = 150
	method venderEmpanada(){
		empanadasVendidas ++
	} 
}