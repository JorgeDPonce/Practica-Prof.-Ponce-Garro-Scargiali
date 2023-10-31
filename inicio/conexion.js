const form = document.getElementById("tupedido");

form.addEventListener("submit", async function (event) {
  event.preventDefault();

  const nombre = document.getElementById("nombre").value;
  const apellido = document.getElementById("apellido").value;
  const dniCuit = document.getElementById("dniCuit").value;
  const email = document.getElementById("email").value;
  const tipo1 = document.getElementById("tipo1").value;
  const cantidad1 = document.getElementById("cantidad1").value;
  const tipo2 = document.getElementById("tipo2").value;
  const cantidad2 = document.getElementById("cantidad2").value;
  const tipo3 = document.getElementById("tipo3").value;
  const cantidad3 = document.getElementById("cantidad3").value;


  const data = {
    nombre: nombre,
    apellido: apellido,
    dniCuit: dniCuit,
    email: email,
    tipo1: tipo1,
    cantidad1: cantidad1,
    tipo2: tipo2,
    cantidad2: cantidad2,
    tipo3: tipo3,
    cantidad3: cantidad3,
  };

  console.log(data);

  const fetchResult = await fetch("pedidos.php", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(data),
  })
    .then((response) => response.json())
    .then((result) => {
      console.log(result);
    })
    .catch((error) => {
      console.log(error);
    });

  console.log(fetchResult);
});
