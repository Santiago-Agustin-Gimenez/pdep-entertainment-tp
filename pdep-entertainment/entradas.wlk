class Entrada{
    var property banda
    var property fecha
    const precioBase = 1000

    method banda() = banda

    method fecha() = fecha

    method precioPublico() = precioBase + self.impuesto()

    method impuesto()
}