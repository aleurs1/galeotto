<?php
    // dico al browser che la risposta non sarà in HTML ma in JSON
    header("Content-Type: application/json");
    
    // creo la connessione dicendo che troveremo i dati nel db codificati in UTF-8
    $connessione  = new PDO("mysql:host=localhost;dbname=galeotto;charset=utf8", "root", "");
    
    // definisco ed eseguo la query
    $sql =  "select distinct l.id, l.titolo, l.urlCopertina, a.nominativo as autore from GAL_libri as l, GAL_libriConAutori as lca, GAL_autori as a where l.id=lca.idLibro and lca.idAutore=a.id order by l.titolo";
    $stmt = $connessione->query($sql);
    
    // prelevo il risultato e lo codifico in json.
    $righe  = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($righe);
?>
