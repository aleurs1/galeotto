function creaAppendiElemento(padre, tag, attributi) {
    // creo il nuovo elemento
    const nuovoElemento = document.createElement(tag);

    // aggiungo tutti gli attributi passati
    for (let chiave in attributi) {
        nuovoElemento.setAttribute(chiave, attributi[chiave]);
    }

    // aggiungo il nuovo elemento al padre
    padre.appendChild(nuovoElemento);

    // restituisco un puntatore all'oggetto appena creato
    return nuovoElemento;
}

function filtralibri(event) {
    
    // impediamo il comportamento predefinito del form cioè eseguire uno script php
    event.preventDefault();

    // prendo un riferimento al mio form
    const form = event.target; 

    // creo un vettore associativo con tutti i campi del form
    const datiForm = new FormData(form);
        //datiForm["titolo"]="La divina commedia"

    // convertiamo il mio dataform in una stringa per URL (es "titolo=divina%20commedia&titolo=ciaociao")
    const queryString = new URLSearchParams(datiForm).toString();

    fetch('get_libri.php?'+queryString)
        .then(response => response.json()) // converte la risposta (json) in un oggetto js
        .then(data => {            
            const miniature = document.getElementById('miniature');
            
            // svuota il contenuto del div miniature
            miniature.innerHTML='';

            if (data.length == 0) {
                miniature.innerHTML='<p>Nessun libro trovato</p>';
            } else {
                // per ogni libro che sta in data aggiungi un elemento a miniature
                let i=0;
                data.forEach(libro => {
                    // se necessario aggiungo una nuova riga
                    if (i%5==0){
                        creaAppendiElemento(miniature, 'div', {'class':'row'});
                    }
                    // aggiunge il libro 
                    const div1 = creaAppendiElemento(miniature.lastChild, 'div', {'class':'col mb-5', 'id':libro['id']});                    
                    const a = creaAppendiElemento(div1, 'a', {'data-bs-toggle':'modal', 'data-bs-target':'#modal_dettagli'});
                    const div2 = creaAppendiElemento(a, 'div', {'class': 'card'} );
                    const img = creaAppendiElemento(div2, 'img', {'src': 'img/copertine/'+libro['urlCopertina'], 'class':'card-img-top imgDiCard'});
                    const div3 = creaAppendiElemento(div2, 'div', {'class':'card-body'} );
                    const h5 = creaAppendiElemento(div3, 'h5', {class:'card-title maxDueRighe'} );
                    h5.innerHTML = libro['titolo'];
                    const p = creaAppendiElemento(div3, 'p', {class:'card-text maxDueRighe'} );
                    p.innerHTML = libro['titolo'];
                    h5.innerHTML = libro['autore'];


                    // ho aggiunto un libro
                    i++;
                })
            }
        })
}

function caricaDettagliLibro(event) {
    // prendi un riferimento a me stesso o un mio antenato che abbia la proprietà data-bs-target posta a #modal_dettagli
    const oggettoSuCuiHaCliccato = event.target.closest('[data-bs-target="#modal_dettagli"]');

    if (oggettoSuCuiHaCliccato) {
        const divPadre = oggettoSuCuiHaCliccato.parentNode;
        const idLibro = divPadre.id;
        fetch('get_dettagliLibro.php?id=idLibro')
            .then(response = response.json())
            .then(data => {
                alert(data.titolo);
            });

    } 
}
