# Explicaciones teóricas

## Encapsulamiento

### Se usa para centralizar las reglas del sistema en los métodos correspondientes y evitar que las operaciones se realicen de manera incorrecta:

- ### Asistente: el método comprar() controla el saldo antes de realizar una compra.

- ### Entrada: precioPublico() calcula el precio final incluyendo el impuesto.

- ### Productora: centraliza los cálculos de recaudación, presupuesto y ganancia.

## Responsabilidad

### Cada objeto o clase se encarga de las tareas que le corresponden:

- ### Asistente: administra su dinero, compra entradas y mantiene su historial.

- ### Entrada: representa una entrada y calcula su precio público.

- ### Banda: define el comportamiento general de las bandas.

- ### Productora: registra bandas y asistentes, calcula ganancias y determina la banda más popular.

- ### Fan y VIP: definen los descuentos correspondientes a cada abono.

## Polimorfismo

### Se usa cuando distintos objetos responden al mismo mensaje de manera diferente:

- ### Fan y VIP: implementan porcentajeDescuento() con reglas distintas.

- ### Tipos de bandas: cada una calcula sus gastos adicionales y popularidad según sus características.

## Herencia

### Las clases BandaDeRock, BandaDeTrap y BandaDeIndie heredan de Banda, reutilizando su comportamiento general y adaptándolo a las reglas de los distintos géneros musicales.

### A su vez, NoTieneSaldoSuficienteException hereda de Exception para representar errores relacionados con la compra de entradas.

## Redefinición

### Se redefinen métodos de Banda en sus subclases a partir de override method, para establecer los gastos adicionales, la popularidad y, en el caso del trap, el cálculo del canon.

# Decisiones de Diseño

### Decidí separar las responsabilidades para que cada clase se encargue de sus propias reglas. Cada asistente conserva su historial de entradas y su descuento individual, mientras que la productora utiliza esa información para calcular las ventas, la recaudación y la ganancia total.