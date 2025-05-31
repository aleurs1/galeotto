<?php
    // dico al browser che la risposta non sarà in HTML ma in JSON
    header("Content-Type: application/json");
    
    // creo la connessione dicendo che troveremo i dati nel db codificati in UTF-8
    $connessione  = new PDO("mysql:host=localhost;dbname=galeotto;charset=utf8", "root", "");
    
    // definisco la query
        // la prima parte è statica
        $sql =  "select l.titolo, a.nominativo as autore, l.urlCopertina, l.sinossi";
        $sql .= " from GAL_libri as l, GAL_libriConAutori as lca, GAL_autori as a";
        $sql .= " where l.id=lca.idLibro and lca.idAutore=a.id and l.id=?";
    // preparo ed eseguo la query
    $stmt = $connessione->prepare($sql);
    $id = $_GET['id'] ?? 0; // è come se avessi testato la variabile per mettere il valore della variabile solo se esiste
    $stmt->execute([$id]);
    
    // prelevo il risultato e lo codifico in json.
    $righe  = $stmt->fetch(PDO::FETCH_ASSOC);

    // ora aggiungiamo le parole chiave del libro: cuore###dole###amore
    $sql="select pc.parola
          from GAL_libri as l, GAL_paroleChiave as pc, GAL_libriConParoleChiave as lcpc
          where l.id=? AND l.id=lcpc.idLibro AND lcpc.idParolaChiave=pc.id";
    $stmtParole = $connessione->prepare($sql);
    $stmtParole->execute([$id]);
    $paroleChiave = $stmtParole->fetchAll(PDO::FETCH_COLUMN);
    $righe['paroleChiave'] = implode("###",$paroleChiave);

    echo json_encode($righe);
?>
