<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "localhost";
$username = "bluetick_admin1702";
$password = "Blueticks@123";
$dbname = "bluetick_sgr_menu";

//$servername = "localhost";
//$username = "root";
//$password = "";
//$dbname = "menu_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$action = isset($_GET['action']) ? $_GET['action'] : '';

if ($action == 'create') {
    $name = $_POST['name'];
    $description = $_POST['description'];
    $quantity = $_POST['quantity'];
    $price = $_POST['price'];

    $stmt = $conn->prepare("INSERT INTO menu_items (name, description, quantity, price) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("sssd", $name, $description, $quantity, $price);
    $stmt->execute();
    $stmt->close();

    echo json_encode(['success' => true]);
} elseif ($action == 'read') {
    $result = $conn->query("SELECT * FROM menu_items");
    $menuItems = $result->fetch_all(MYSQLI_ASSOC);
    echo json_encode($menuItems);
} elseif ($action == 'edit') {
    $id = $_GET['id'];
    $result = $conn->query("SELECT * FROM menu_items WHERE id = $id");
    $item = $result->fetch_assoc();
    echo json_encode($item);
} elseif ($action == 'update') {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $description = $_POST['description'];
    $quantity = $_POST['quantity'];
    $price = $_POST['price'];

    $stmt = $conn->prepare("UPDATE menu_items SET name = ?, description = ?, quantity = ?, price = ? WHERE id = ?");
    $stmt->bind_param("ssdsi", $name, $description, $quantity, $price, $id);
    $stmt->execute();
    $stmt->close();

    echo json_encode(['success' => true]);
} elseif ($action == 'delete') {
    $id = $_GET['id'];
    $conn->query("DELETE FROM menu_items WHERE id = $id");
    echo json_encode(['success' => true]);
}

$conn->close();
?>
