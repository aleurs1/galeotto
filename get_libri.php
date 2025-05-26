<?php
    // dico al browser che la risposta non sarà in HTML ma in JSON
    header("Content-Type: application/json");
    
    // creo la connessione dicendo che troveremo i dati nel db codificati in UTF-8
    $connessione  = new PDO("mysql:host=localhost;dbname=galeotto;charset=utf8", "root", "");
    
    // vertifico che voglia (almeno un) libro o film o ebook
    $libri = isset($_GET['libri']);
    $mlol = isset($_GET['mlol']);
    $film = isset($_GET['film']);
    if ($libri || $mlol || $film) {

        // definisco la query
            // la prima parte è statica
            $sql =  "select distinct l.id, l.titolo, l.urlCopertina, a.nominativo as autore ";
            $sql .= "from GAL_libri as l, GAL_libriConAutori as lca, GAL_autori as a";

            // la parte centrale della query
                // preparare i vettori per customizzare la query
                $from;
                $where = [];
                $parametri = [];
                // se ha riempito il primo textedit
                if (!empty($_GET['autore'])) {
                    $where[] = " a.nominativo like :autore";
                    $parametri[':autore'] =  "%".$_GET['autore']."%";
                }            
                if (!empty($_GET['titolo'])) {
                    $where[] = " l.titolo like :titolo";
                    $parametri[':titolo'] =  "%".$_GET['titolo']."%";
                }
                if (!empty($_GET['parolachiave'])) {
                    $from = ", GAL_paroleChiave as pc, GAL_libriConParoleChiave as lcpc";
                    $where[] = " l.id=lcpc.idLibro AND lcpc.idParolaChiave=pc.id AND pc.parola like :parola";
                    $parametri[':parola'] =  "%".strtoupper($_GET['parolachiave'])."%";
                }

            // aggiungo le tabelle in più eventualmente necessarie
            if (!empty($from)) {
                $sql .= $from;
            }

            // aggiungo le condizioni: per prime quelle standard
            $sql .= " where l.id=lca.idLibro and lca.idAutore=a.id";

            // aggiungo le altre condizioni (se ci sono)
            if (!empty($where)) {
                $sql .= " and " . implode(" and ", $where);
            }

            // aggiungo le condizioni finali eventualmente necessarie per i check box
            if ($mlol) {
                $sql .= " and l.mlol=1 ";
            } else if ($libri && $film) {
                ;
            } else if ($libri) {
                $sql .= " and l.film=0 ";
            } else if ($film) {
                $sql .= " and l.film=1 ";
            }
            
            // aggiungo l'order by finale
            $sql .= " order by titolo";

        // preparo ed eseguo la query
        $stmt = $connessione->prepare($sql);
        $stmt->execute($parametri);
        
        // prelevo il risultato e lo codifico in json.
        $righe  = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($righe);
    } else {
        echo json_encode("");
    }

?>
