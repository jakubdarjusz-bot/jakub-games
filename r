function detonate() {
    // Dodajemy efekt błysku na koniec
    document.getElementById('explosion-screen').style.filter = 'brightness(10)';
    setTimeout(function() {
        document.getElementById('explosion-screen').style.display = 'none';
    }, 200);
    
    // Możesz tu dodać dźwięk wybuchu, jeśli masz plik mp3!
    console.log("System Jakub Games zainicjowany po wybuchu.");
}
