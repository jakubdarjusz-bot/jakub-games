function checkCode() {
    var pass = document.getElementById("adminPass").value;
    
    // KROK 1: Pierwszy kod
    if(pass == "1212") {
        alert("Kod 1 poprawny. Rozpoczynam SKANOWANIE GŁOSU...");
        startVoiceScan();
    } else {
        alert("BŁĄD: Nieznany klucz licencyjny.");
    }
}

function startVoiceScan() {
    // Sprawdzamy czy przeglądarka obsługuje słuchanie
    window.SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
    const recognition = new SpeechRecognition();
    recognition.lang = 'pl-PL';

    alert("Mów teraz! (System sprawdza barwę głosu Jakuba...)");
    recognition.start();

    recognition.onresult = function(event) {
        const glos = event.results[0][0].transcript.toLowerCase();
        console.log("Wykryto głos: " + glos);

        // KROK 2: System sprawdza czy powiedziałeś tajne hasło głosem
        // Możesz tu wpisać np. "otwórz" albo "jestem szefem"
        if(glos.includes("otwórz") || glos.includes("jakub")) {
            alert("Głos zweryfikowany: TO JEST JAKUB. Podaj DRUGI KOD:");
            let secondCode = prompt("DRUGI KOD (Ostateczne potwierdzenie):");
            
            if(secondCode == "777") { // Tutaj Twój drugi tajny kod
                alert("DOSTĘP CAŁKOWITY PRZYZNANY. Witaj w systemie Słonków.");
                document.body.style.backgroundColor = "#002244";
            } else {
                alert("ALARM! Drugi kod niepoprawny! Blokada urządzenia.");
            }
        } else {
            alert("BŁĄD BIOMETRYCZNY: To nie jest głos administratora!");
        }
    };
}
