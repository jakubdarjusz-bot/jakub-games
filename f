<div id="loader" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: black; color: #00ff41; display: flex; flex-direction: column; justify-content: center; align-items: center; z-index: 9999;">
    <h2 style="letter-spacing: 10px;">JAKUB GAMES OS</h2>
    <div style="border: 1px solid #00ff41; width: 200px; height: 10px; margin-top: 20px;">
        <div id="progress" style="background: #00ff41; width: 0%; height: 100%; transition: 2s;"></div>
    </div>
    <p id="loader-text" style="margin-top: 10px; font-family: monospace;">Inicjowanie bazy Słonków...</p>
</div>

<script>
    // Skrypt, który chowa "cynkę" po załadowaniu
    window.onload = function() {
        document.getElementById('progress').style.width = '100%';
        setTimeout(function() {
            document.getElementById('loader-text').innerText = 'DOSTĘP PRZYZNANY!';
            setTimeout(function() {
                document.getElementById('loader').style.display = 'none';
            }, 1000);
        }, 2000);
    };
</script>
