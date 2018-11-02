object uocra {
	
	 
	
	method jornalAlbanil() {
		return 2000
	}
	
	method jornalGasista() {
		return 3000
	}
	
	method jornalPlomero() {
		return 3000
	}
	
	method jornalElectricista() {
		return 3500
	}
	
}

class Obrero { 
	
	var bLicencia = false
	var cantJornadas = 0
	
	method estaDeLicencia() { return bLicencia }
	method tomarLicencia() { bLicencia = true }
	method volverDeLicencia() { bLicencia = false }
	method trabajar(obra) 
	method cuantoCobra()
	method cancelarJornada()  {
		cantJornadas = 0
	}
	
	
}

class Albanil inherits Obrero {
	
	var property cantLadrillos = 100
	var property aporta = 3
	
	override method trabajar(obra) { 
		obra.consumirLadrillo(cantLadrillos)
		cantJornadas ++
	}
	override method cuantoCobra() {
		return uocra.jornalAlbanil() * cantJornadas
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
	override method cuantoCobra() {
		return uocra.jornalGasista() * cantJornadas
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
	override method cuantoCobra() {
		return uocra.jornalPlomero() * cantJornadas
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
	override method cuantoCobra() {
		return uocra.jornalElectricista() * cantJornadas
	}
	
}