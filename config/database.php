<?php
// Konfigurasi Database
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'clair4udio');

// Koneksi ke database
function getDBConnection() {
    try {
        $pdo = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    } catch(PDOException $e) {
        die("Koneksi database gagal: " . $e->getMessage());
    }
}

// Fungsi untuk mendapatkan semua produk
function getAllProducts() {
    $pdo = getDBConnection();
    $stmt = $pdo->prepare("SELECT * FROM products WHERE status = 'active' ORDER BY created_at DESC");
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

// Fungsi untuk mendapatkan produk berdasarkan ID
function getProductById($id) {
    $pdo = getDBConnection();
    $stmt = $pdo->prepare("SELECT * FROM products WHERE id = ? AND status = 'active'");
    $stmt->execute([$id]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
}
?>