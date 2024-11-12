<?php
// Arquivo db_connection.php

$host = 'localhost';   // ou o seu endereço do servidor
$port = '5432';        // Porta padrão do PostgreSQL
$dbname = 'gerenciador_tarefas';
$user = 'postgres';
$password = 'postgres';

// Criando a conexão com o banco de dados
try {
    $conn = new PDO("pgsql:host=$host;port=$port;dbname=$dbname", $user, $password);
    // Definir o modo de erro para exceção
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Erro ao conectar ao banco de dados: " . $e->getMessage();
}
?>
