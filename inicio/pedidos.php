<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pedidoselina";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {

  $json_data = file_get_contents("php://input");

  $data = json_decode($json_data, true);

  if ($data === null) {
    $response = [
      "error" => "Invalid JSON data",
    ];
    echo json_encode($response);
  } else {
    $nombre = $data["nombre"];
    $apellido = $data["apellido"];
    $dniCuit = $data["dniCuit"];
    $email = $data["email"];
    $tipo1 = $data["tipo1"];
    $cantidad1 = $data["cantidad1"];
    $tipo2 = $data["tipo2"];
    $cantidad2 = $data["cantidad2"];
    $tipo3 = $data["tipo3"];
    $cantidad3 = $data["cantidad3"];

    $sql = "INSERT INTO pedidos (nombre, apellido, dniCuit, email, tipo1, cantidad1, tipo2, cantidad2, tipo3, cantidad3) VALUES ('$nombre', '$apellido', '$dniCuit', '$email', '$tipo1', $cantidad1, '$tipo2', '$cantidad2', '$tipo3', '$cantidad3')";

    if ($conn->query($sql) === TRUE) {
      $response = [
        "message" => "Received data successfully",
        "nombre" => $nombre,
        "apellido" => $apellido,
        "dniCuit" => $dniCuit,
        "email" => $email,
        "tipo1" => $tipo1,
        "cantidad1" => $cantidad1,
        "tipo2" => $tipo2,
        "cantidad2" => $cantidad2,
        "tipo3" => $tipo3,
        "cantidad3" => $cantidad3
      ];
      echo json_encode($response);
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }
  }
} else {

}

$conn->close();
?>
