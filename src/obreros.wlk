class Obrero { 
	
	var bLicencia = false
	var cantJornadas = 0
	
	method estaDeLicencia() { return bLicencia }
	method tomarLicencia() { bLicencia = true }
	method volverDeLicencia() { bLicencia = false }
	method trabajar(obra) 
	
	
}

class Albanil inherits Obrero {
	
	var property cantLadrillos = 100
	var property aporta = 3
	
	override method trabajar(obra) { 
		obra.consumirLadrillo(cantLadrillos)
		cantJornadas ++
	}
	
	
}

class Gasista inherits Obrero {
	
	var property cantCanio = 3
	var property cantFosforo = 20
	var property aporta = 3
	
	override method trabajar(obra) {
		obra.consumirCanio(cantCanio)
		obra.consumirFosforo(cantFosforo)
		cantJornadas ++
	}
}

class Plomero inherits Obrero {
	
	var property cantCanio = 10
	var property cantArandela = 30
	var property aporta = 9
	var property desperdiciaCanio = 1
	
	override method trabajar(obra) {
		obra.consumirCanio(cantCanio)
		obra.consumirArandela(cantArandela)
		cantJornadas ++
	}
	
}

class Electricista inherits Obrero {
	
	var property cantCable = 4
	var property cantCinta = 1
	var property aporta = 4
	
	override method trabajar(obra) {
		obra.consumirCable(cantCable)
		obra.consumirCinta(cantCinta)
		cantJornadas ++
	}
	
}