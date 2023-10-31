// Definir los precios para cada tipo de masa
var precios = {
    precio1: 770, // Reemplaza con el precio real
    precio2: 510, // Reemplaza con el precio real
    precio3: 290, // Reemplaza con el precio real
    precio4: 290, // Reemplaza con el precio real
    precio5: 270, // Reemplaza con el precio real
    precio6: 800, // Reemplaza con el precio real
    precio7: 580, // Reemplaza con el precio real
    precio8: 310, // Reemplaza con el precio real
    precio9: 310, // Reemplaza con el precio real
    precio10: 310, // Reemplaza con el precio real
    precio11: 310, // Reemplaza con el precio real
    precio12: 300, // Reemplaza con el precio real
    precio13: 360, // Reemplaza con el precio real
    precio14: 330, // Reemplaza con el precio real

    // Agrega aquí el resto de los precios
};

// Función para calcular el precio total del pedido
function calcularPrecioTotal() {
    var total = 0;

    // Calcular el total para las masas criollas
    var tipo1 = document.getElementById('tipo1').value;
    var cantidad1 = document.getElementById('cantidad1').value;
    total += precios[tipo1] * cantidad1;

    // Calcular el total para las masas hojaldre
    var tipo2 = document.getElementById('tipo2').value;
    var cantidad2 = document.getElementById('cantidad2').value;
    total += precios[tipo2] * cantidad2;

    // Calcular el total para las masas semi hojaldre
    var tipo3 = document.getElementById('tipo3').value;
    var cantidad3 = document.getElementById('cantidad3').value;
    total += precios[tipo3] * cantidad3;

    // Mostrar el resultado en la página
    document.getElementById('resultado').innerHTML = 'El precio total del pedido es: $ ' + total;
}

// Agregar un event listener al formulario para calcular el precio total cuando se envía el formulario
document.getElementById('pedidoForm').addEventListener('submit', function(event) {
    event.preventDefault();  // Prevenir la recarga de la página
    calcularPrecioTotal();
});


function mostrarFechaYHora() {
    var fechaYHora = new Date();
    console.log('Fecha y hora actuales: ' + fechaYHora.toLocaleString());
}



