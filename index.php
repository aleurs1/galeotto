<!DOCTYPE html>
<html lang="en">

<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Galeotto fu il libro</title>
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- foglio di stile mio -->
    <link rel="stylesheet" href="css/stili.css">

    <!-- google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inspiration&display=swap" rel="stylesheet">

    <!-- google icons x la barra di ricerca -->
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

    <!-- script per vedere i tooltip di bootstrap -->
    <script defer>
        document.addEventListener("DOMContentLoaded", function() {
            var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
            var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
                return new bootstrap.Tooltip(tooltipTriggerEl);
            });
        });
    </script> 

    <!-- collego lo script per selezionare i libri in base ai valori immessi -->
    <script src="js/filtralibri.js"></script>

    <!-- accesso tramite google -->
    <script src="https://accounts.google.com/gsi/client" async defer></script>
    <script src="js/acessogoogle.js"></script>
</head>

<body>

    <!-- titolo -->
    <h1 class="container-sm inspiration" id="titolo">Galeotto fu il libro</h1>

    <!-- ricerca -->
    <div class="container-sm bg-body-tertiary rounded shadow" id="barraRicerca">
        <form class="row" method="get" id="mioform">
            <div class="col-3">
                <label class="form-label ricerca_label" for="edt_autore">Autore</label>
                <div class="input-group">
                    <div class="input-group-text">
                        <span class="material-symbols-outlined">
                            history_edu
                        </span>
                    </div>
                    <input type="text" class="form-control" id="edt_autore" placeholder="Inserisci un autore" name="autore">
                </div>
            </div>
            <div class="col-3">
                <label class="form-label ricerca_label" for="edt_titolo">Titolo</label>
                <div class="input-group">
                    <div class="input-group-text">
                        <span class="material-symbols-outlined">
                            menu_book
                        </span>
                    </div>
                    <input type="text" class="form-control" id="edt_titolo" placeholder="Inserisci un titolo" name="titolo">
                </div>
            </div>
            <div class="col-3">
                <label class="form-label ricerca_label" for="edt_parolachiave">Parola chiave</label>
                <div class="input-group">
                    <div class="input-group-text">
                        <span class="material-symbols-outlined">
                            key_vertical
                        </span>
                    </div>
                    <input type="text" class="form-control" id="edt_parolachiave"
                        placeholder="Inserisci una parola chiave" name="parolachiave">
                </div>
            </div>

            <div class="col-1">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="cb_libri" checked="checked" name="libri">
                    <label class="form-check-label" for="cb_libri">
                        Libro
                    </label>
                </div>
                <div class="form-check" data-bs-toggle="tooltip" data-bs-placement="right" title="Libro presente su www.medialibrary.it">
                    <input class="form-check-input" type="checkbox" value="" id="cb_ebook" name="mlol">
                    <label class="form-check-label" for="cb_ebook">
                        MLOL
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="cb_film" name="film">
                    <label class="form-check-label" for="cb_film">
                        Film
                    </label>
                </div>
            </div>
            <div class="col-2" style="text-align: center">
                <button type="submit" class="btn btn-success btn-lg " id="btn_cerca">Cerca</button>
            </div>

        </form>
    </div>

    <!-- miniature -->
    <div class="container text-center" id="miniature">
        <script>
            document.getElementById('mioform').addEventListener('submit', filtralibri);
            document.addEventListener('click', caricaDettagliLibro);
        </script>
        <?php
            
    /*
            // faccio una richiesta HTTP GET all'endpoint indicato, ricevo una stringa
            $risposta = file_get_contents("http://localhost/galeotto/get_libri.php");

            // decodifico la stringa in un json
            $libri = json_decode($risposta, true);

            // gestisco l'errore
            if (!$libri) {
                echo "<p>Nessun libro trovato.</p>";
                //exit;
            }

            // metto a video tutti i libri
            $i=0;
            foreach ($libri as $libro) {
                // apro una row ogni 5 libri
                if ($i%5==0) {
                    echo "<div class='row'>";
                }
                
                // tramuto li vettore associativo in variabili
                $id = $libro['id'];
                $urlCopertina = $libro['urlCopertina'];
                $titolo = $libro['titolo'];
                $autore = $libro['autore'];
                echo "<div class='col mb-5' id='$id'>";
                echo "<a href='#' data-bs-toggle='modal' data-bs-target='#modal_dettagli'>";
                echo "<div class='card'>";
                echo "<img src='img/copertine/$urlCopertina' class='card-img-top imgDiCard' alt='...'>";
                echo "<div class='card-body'>";
                echo "<h5 class='card-title maxDueRighe'>$titolo</h5>";
                echo "<p class='card-text maxDueRighe'>$autore</p>";
                echo "</div></div></a></div>";
                echo "\n";

                // chiudo la row ogni libri
                if ($i%5==4) {
                    echo "</div>";
                }

                // ho aggiunto un libro
                $i++;
            }
*/
        ?>
    </div>

    <!-- footer -->
    <div class="container-sm" id="footer">
        <div class="bg-body-tertiary">
            <div class="row">
                <div class="col-1">
                    <div style="float:right; height: 100%;">
                        <a class="navbar-brand">
                            <img id="logo_curie" src="img/logo_curie.png" alt="icona curie">
                        </a> 
                    </div>
                </div>
                <div class="col-4">
                    <h5>Marie Curie</h5>
                    <p>Pergine Valsugana</p>
                    <p>Via S.Pietro 4</p>
                    <p>(Trento)</p>
                </div>
                <div class="col-4">
                    <h5>Referenti Progetto</h5>
                    <p>Prof.ssa Silvia Mondini</p>
                    <p>Prof.ssa Claudia Segnana </p>
                    <p>Bibliotecaria Mara Duiella</p>
                </div>
                <div class="col-3">
                    <h5>Realizzazione Sito</h5>
                    <p>Classe 5AIN (2024-2025)</p>
                    <p>Prof. Alessandro Ursomando</p>
                    <p>(c) 2024-2025</p>
                </div>
              
            </div>
        </div>
    </div> 

    <!-- finestra modale per i dettagli delle miniature -->
    <div class="modal fade" id="modal_dettagli" tabindex="-1" aria-labelledby="modal_dettagliLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title titoloModaleDettagli" id="modal_dettagliLabel">
                        Storia di una famiglia e di una impresa - <span>Grimaldi Armatori</span> -
                    </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container text-center">
                        <!-- riga 1: copertina, sinossi -->
                        <div class="row">
                            <div class="col-4" style="padding-left: 0px;">
                                <img src="img/copertina3.jpg" class="card-img-top imgDiModaleDettagli " alt="..." >
                            </div>
                            <div class="col-8 sinossiDiModaleDettagli">
                                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Asperiores impedit iure totam
                                vitae fugiat, animi nobis magnam consequuntur quis ad. Fugiat suscipit, nihil porro fuga
                                molestias natus eum cum quibusdam.
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam reiciendis officiis
                                ratione repudiandae velit tempore! Non, vitae? Qui, quas? Minus repudiandae ipsum
                                corrupti eaque, laudantium accusantium? Non adipisci recusandae necessitatibus.
                                Lorem, ipsum dolor sit amet consectetur adipisicing elit. 
                            </div>
                        </div>
                    </div>
                    <!-- riga 2: stelline, tag -->
                    <div class="row mt-3 mb-3">
                        <div class="col-4 text-center">
                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                                fill="#ffd700">
                                <path
                                    d="m233-120 65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Z" />
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                                fill="#ffd700">
                                <path
                                    d="m233-120 65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Z" />
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                                fill="#ffd700">
                                <path
                                    d="m233-120 65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Z" />
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                                fill="#ffd700">
                                <path
                                    d="m233-120 65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Z" />
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px"
                                fill="#ffd700">
                                <path
                                    d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z" />
                            </svg>
                        </div>
                        <div class="col-8 text-end">
                            <span class="badge text-bg-secondary">Lorem</span>
                            <span class="badge text-bg-secondary">psum</span>
                            <span class="badge text-bg-secondary">dolor</span>
                        </div>
                    </div>
                    <!-- riga 3: commenti -->
                    <div class="row mt-2">
                        <div class="accordion" id="zonaCommentiMain">
                            <div class="accordion-item">
                              <h2 class="accordion-header">
                                <button class="accordion-button bg-white text-dark" type="button" data-bs-toggle="collapse" data-bs-target="#zonaCommenti" aria-expanded="true" aria-controls="zonaCommenti">
                                  Commenti (3)
                                </button>
                              </h2>
                              <div id="zonaCommenti" class="accordion-collapse collapse" data-bs-parent="#zonaCommentiMain">
                                <div class="accordion-body" id="zonaCommentiUtente">
                                    <div class="card p-3 border rounded shadow-sm mt-3">
                                        <div class="d-flex align-items-start">
                                            <img src="img/profile.png" alt="User" class="rounded-circle me-3">
                                            <div>
                                                <h6 class="mb-1">Mario Rossi <span>2 ore fa</span></h6>                                                
                                                <p class="mb-0">Lorem ipsum dolor sit amet Amet minima</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card p-3 border rounded shadow-sm mt-3">
                                        <div class="d-flex align-items-start">
                                            <img src="img/profile.png" alt="User" class="rounded-circle me-3">
                                            <div>
                                                <h6 class="mb-1">Mario Rossi <span>31/12/2025</span></h6>                                                
                                                <p class="mb-0">Lorem ipsum dolor sit amet Amet minima quam quasi nulla explicabo voluptatibus aut, iusto aliquid quo? Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo est harum quisquam ex doloribus incidunt id deleniti. Reprehenderit neque ipsam corrupti animi! Ratione, ipsum cum repellat reiciendis assumenda quae omnis.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card p-3 border rounded shadow-sm mt-3">
                                        <div class="d-flex align-items-start">
                                            <img src="img/profile.png" alt="User" class="rounded-circle me-3">
                                            <div>
                                                <h6 class="mb-1">Mario Rossi <span>15/10/2025</span></h6>                                                
                                                <p class="mb-0">Lorem ipsum dolor sit amet Amet minima quam quasi nulla explicabo voluptatibus aut, iusto aliquid quo?</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-body text-center">
                                    <button type="button" class="btn btn-success">Aggiungi commento</button>
                                </div>

                              </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <!-- forzo l'invocazione della funzione eseguita al submit del form -->
    <script>
        document.getElementById('mioform').requestSubmit();
    </script>
</body>

</html>