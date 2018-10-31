class Obra {
	
	var property cantLadrillo = 0
	var property cantCable = 0
	var property cantFosforo = 0
	var property cantArandela = 0
	var property cantCanio = 0
	var property plantilla = []
	
	
	method agregarObrero(obrero) {
		plantilla.add(obrero)
	}
	method agregarObreros(obreros) {
		plantilla.addAll(obreros)
	}
	method quitarObrero(obrero) {
		if (obrero.estaDeLicencia()) {
			self.error("Las leyes laborales están para respetarse - licencia implica estabilidad laboral")
		}
		plantilla.remove(obrero)
		
	}
	method obrerosDisponibles() {
		return plantilla.filter({obrero=>!(obrero.estaDeLicencia())})
	} 
	method iniciarJornada() {
		if (self.obrerosDisponibles().isEmpty()) { 
		self.error("No hay obreros disponibles para trabajar")
	}
		(self.obrerosDisponibles()).forEach({obrero=>obrero.trabajar(self)})
	}
	method consumirLadrillo(cantidad) {
		cantLadrillo -= cantidad
	}
	method consumirCanio(cantidad) {
		cantCanio -= cantidad
	}
	method consumirCable(cantidad) {
		cantCable -= cantidad
	}
	method consumirFosforo(cantidad) {
		cantFosforo -= cantidad
	}
	method consumirArandela(cantidad) {
		cantArandela -= cantidad
	}
	
	
	
}
