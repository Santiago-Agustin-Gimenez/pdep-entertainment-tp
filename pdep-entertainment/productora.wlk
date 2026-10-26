object productora {
    var property impuesto
    const property bandas = []
    const asistentes = []

    method registrarBanda(banda) {
        bandas.add(banda)
    }

    method registrarAsistente(asistente) {
        asistentes.add(asistente)
    }

    method entradasVendidas() {
        const entradas = []
        asistentes.forEach({asistente => entradas.addAll(asistente.historialDeEntradas())})
        return entradas
    }

    method cantidadDeEntradasVendidas() = self.entradasVendidas().size()

    method recaudacion() = self.entradasVendidas().map({entrada => entrada.precioPublico()}).sum()

    method presupuestoDeBandas() = bandas.map({banda => banda.calcularPresupuesto()}).sum()

    method gananciaTotal() = self.recaudacion() - self.presupuestoDeBandas()

    method entradasVendidasDe(banda) {
        var cantidad = 0
        self.entradasVendidas().forEach({entrada =>
        if (entrada.banda() == banda) {
            cantidad += 1
        }})
        return cantidad
    }

    method bandaMasPopular() {
        if (bandas.isEmpty()) {
            return null
        }
        return bandas.max({banda => self.entradasVendidasDe(banda)})
    }

    method bonificarAsistentesVip() {
        asistentes.filter({asistente => asistente.abono() == vip}).forEach({asistente => asistente.bonificarVip()})
    }
}