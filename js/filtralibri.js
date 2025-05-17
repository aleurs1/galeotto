function filtralibri(event) {
    alert("ciao");
    
    // impediamo il comportamento predefinito del form cioè eseguire uno script php
    event.preventDefault();

    // prendo un riferimento al mio form
    const form event.target; 

    // creo un vettore associativo con tutti i campi del form
    const datiForm = new FormData(form);
        //datiForm["titolo"]="La divina commedia"

    // convertiamo il mio dataform in una stringa per URL (es "autore=dante&titolo=ciaociao")
    const queryString = new URLSearchParams(datiForm).toString();

    alert(queryString);

}