class Asistente{
    var property tipoDeAbono
    const historialDeEntradas = []
    var property dinero
    var property entradas
    var property compras

    method dinero() = dinero

    method abono() = tipoDeAbono

    method montoAPagar(entrada) = entrada.precioPublico() * tipoDeAbono

    method comprar(entrada){
        dinero -= entrada.montoAPagar(entrada)
        historialDeEntradas.add(entrada)
    }

    method saldoPositivo() = dinero > 0
    
    method comprarSaldoPositivo(entrada){
        if(self.saldoPositivo()){
            entradas.filter({entrada => entrada.banda().fecha()})
            self.comprar(entrada)
        } else {
            throw new NoTieneSaldoPostivoException(message = "Saldo negativo, no puede comprar entrada")
        }
    }

    
    
}

class NoTieneSaldoPostivoException inherits Exception{

}