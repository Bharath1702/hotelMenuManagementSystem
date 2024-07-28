<?php
session_start();
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: index.html");
    exit;
}

// Logout functionality
if (isset($_GET['logout']) && $_GET['logout'] == 'true') {
    session_unset(); // Unset all session variables
    session_destroy(); // Destroy the session
    header("Location: index.html"); // Redirect to login page
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu CRM</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Menu CRM</h1>
        <form action="logout.php">
            <button class="logout" style="display: block;position: absolute;top: 0; right: 0;width: 10%;">Logout</button>
        </form>
        <form id="menuForm">
            <input type="hidden" id="itemId" name="id">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <label for="description">Description</label>
            <input type="text" id="description" name="description" required>
            <label for="quantity">Quantity:</label>
            <input type="text" id="quantity" name="quantity" required>
            <label for="price">Price:</label>
            <input type="number" step="0.01" id="price" name="price" required>
            <button type="submit">Save</button>
        </form>
        <table>
            <thead>
                <tr>
                    <th>Index</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="menuTable">
                <!-- Data will be populated here -->
            </tbody>
        </table>
    </div>
    <script src="crm.js"></script>
</body>
</html>
