class Entrada{
    var property banda
    var property fecha
    const precioBase = 1000

    method precioPublico() = precioBase + self.impuesto()

    method impuesto() = productora.impuesto()
}