<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Elenco Libri</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #aaa;
            padding: 8px;
            text-align: left;
        }
        img {
            max-height: 120px;
        }
    </style>
</head>
<body>

<h1>Elenco Libri</h1>

<?php
    // faccio una richiesta HTTP GET all'endpoint indicato, ricevo una stringa
    $risposta = file_get_contents("http://localhost/galeotto/galeotto/api_rest/endpoint.php");

    // decodifico la stringa in un json
    $libri = json_decode($risposta, true);

    // gestisco l'errore
    if (!$libri) {
        echo "<p>Nessun libro trovato.</p>";
        exit;
    }

    // preparo una tabella
    echo "<table>";
    echo "<thead><tr><th>ID</th><th>Copertina</th><th>Titolo</th><th>Autore</th></tr></thead><tbody>";

    foreach ($libri as $libro) {
        echo "<tr>";
        echo "<td>{$libro['id']}</td>";
        echo "<td><img src=\"..\\img\\copertine\\{$libro['urlCopertina']}\" alt=\"Copertina\"></td>";
        echo "<td>{$libro['titolo']}</td>";
        echo "<td>{$libro['autore']}</td>";
        echo "</tr>";
}

echo "</tbody></table>";
?>

</body>
</html>
