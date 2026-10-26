class Asistente{
    var property tipoDeAbono
    const historialDeEntradas = []
    var property dinero
    var property porcentajeDescuentoVip = 0

    method abono() = tipoDeAbono

    method historialDeEntradas() = historialDeEntradas

    method montoAPagar(entrada) = entrada.precioPublico() * (1 - self.porcentajeDeDescuento() / 100)

    method porcentajeDeDescuento() = tipoDeAbono.porcentajeDescuento(self)

    method saldoPositivo() = dinero > 0

    method comprar(entrada) {
        if (self.saldoPositivo()) {
            const monto = self.montoAPagar(entrada)
            if (dinero >= monto) {
                dinero -= monto
                historialDeEntradas.add(entrada)
            } else {
                throw new NoTieneSaldoSuficienteException(message = "No tiene dinero suficiente para pagar la entrada")
            }
        } else {
            throw new NoTieneSaldoSuficienteException(message = "El saldo debe ser positivo para comprar una entrada")
        }
    }

    method entradasDelAnioAnterior(anioActual) =
        historialDeEntradas.filter({entrada => entrada.fecha().year() == anioActual - 1})

    method nombresDeBandas() =
        historialDeEntradas.map({entrada => entrada.banda().nombre()}).asSet()

    method bonificarVip() {
        if (tipoDeAbono == vip) {
            porcentajeDescuentoVip += 1
        }
    }
}

class NoTieneSaldoSuficienteException inherits Exception{

}