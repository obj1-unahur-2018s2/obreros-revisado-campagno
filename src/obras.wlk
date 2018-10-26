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
	method quitarObrero(obrero) {
		plantilla.remove(obrero)
		
	}
	method obrerosDeLicencia() {
		return plantilla.filter({obrero=>!obrero.estaDeLicencia()})
	} 
	method iniciarJornada() {
		(self.obrerosDeLicencia()).forEach({obrero=>obrero.trabajar(self)})
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
