// KROK 3: Drugie hasło (4BBwf)
let secondCode = prompt("Wpisz hasło ostateczne (4 + 2x duże B + w + f):");

if(secondCode === "4BBwf") {
    alert("DOSTĘP ADMINISTRATORA PRZYZNANY. Witaj Jakub!");
    document.body.style.backgroundColor = "#001a33"; // Tryb Admina aktywowany
    // Tu możesz dopisać, co ma się stać, np. pokazanie linku do tajnych modów
} else {
    alert("ALARM! Hasło niepoprawne. System zablokowany.");
}
