// Variabili per conservare il token client e l'access token ricevuto
let tokenClient;                // descrive come deve avvenire l'accesso a Google
let accessToken = null;         // contiene i dati dell'account che ha fatto l'accesso

 /**
 * Funzione da invocare dopo il tentativo di accesso     *  
 * Se la richiesta va a buon fine, si preleva l'accessToken con i dati relativi all'account che ha fatto l'accesso.
 */
function handleTokenResponse(response) {
  if (response.error) {
    console.error('Errore durante la richiesta del token:', response);
    return;
  }

  // Preleva le informazioni sull'accesso
  accessToken = response.access_token;      
  
  // Richiediamo i dati dell'utente utilizzando l'access token
  fetch('https://www.googleapis.com/oauth2/v3/userinfo', {
    headers: {
      Authorization: `Bearer ${accessToken}`
    }
  })
  .then(res => res.json())
  .then(userInfo => {
    console.log("Nome utente:", userInfo.name);
    console.log("Email:", userInfo.email);
    console.log("Immagine:", userInfo.picture);
  })
  .catch(err => {
    console.error('Errore nel fetching dell\'userinfo:', err);
  });
}

/**
 * Funzione invocata al click sul pulsante "Accedi".
 * Usa il clientToken generato al caricamento della pagina per effettuare realmente l'accesso a Google.
 * In quel clientToken c'è scritto quale funzione eseguire al termine dell'interazione con l'utente: 
 * in quella funzione (tra l'altro) si preleva l'accessToken con i dati relativi all'accesso.
 */
function signIn() {     
  tokenClient.requestAccessToken({ prompt: 'consent' }); // L'opzione {prompt: 'consent'} forza la richiesta di autorizzazione,
}

/**
 * Funzione invocata al click sul pulsante "Esci".
 * Funzione di logout che revoca il token e resetta lo stato lato client.
 */
function signOut() {
  if (accessToken) {
    // Revoca l'access token per ripristinare lo stato di autenticazione
    google.accounts.oauth2.revoke(accessToken, () => {
      console.log('Logout effettuato. Token revocato.');
      accessToken = null;
    });
  } else {
    console.log('Nessun token presente, logout non necessario.');
  }
 
}

/**
 * Questa funzione viene chiamata al termine del caricamento della pagina: inizializza il tokenClient.
 */
 function initializeGis() {
  tokenClient = google.accounts.oauth2.initTokenClient({
    client_id: '56678115208-5mo7eu9lhjfpahh1l73808u5sfftunhj.apps.googleusercontent.com', 
    scope: 'openid email profile',
    callback: handleTokenResponse,
    ux_mode: 'popup'  // per forzare la comparsa della finestra di dialogo di autorizzazione.
  });
}

// Inizializza il tokenClient al caricamento della pagina
window.onload = initializeGis;