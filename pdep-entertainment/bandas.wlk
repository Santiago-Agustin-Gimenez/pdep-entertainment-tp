class Banda{
    var property nombre
    const canonBase = 1000000

    method canon() = canonBase

    method calcularPresupuesto() = self.canon() + self.gastoExtra()

    method gastoExtra()

    method calcularPopularidad()
}

class BandaDeRock inherits Banda{
    var property solosDeGuitarra

    override method gastoExtra() = 10000

    override method calcularPopularidad() = solosDeGuitarra * 100
}

class BandaDeTrap inherits Banda{
    var property tieneHielo

    override method gastoExtra() = 0

    override method calcularPopularidad(){
        if(tieneHielo){
            return 1000
        } else {
            return 0
        }
    }

    override method canon() = self.canon() * self.calcularPopularidad()
}

class BandaDeIndie inherits Banda{
    var property instrumentos

    override method gastoExtra() = instrumentos * 500

    override method calcularPopularidad() = 3.14 * nombre.size()
}