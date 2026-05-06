/* Styl dla wyskakującego okna */
.popup-overlay {
    position: fixed;
    top: 0; left: 0; width: 100%; height: 100%;
    background: rgba(0,0,0,0.85);
    display: flex; justify-content: center; align-items: center;
    z-index: 10000; /* Musi być na samym wierzchu */
}
.popup-box {
    background: #111;
    border: 3px solid #00ff41;
    padding: 30px;
    text-align: center;
    border-radius: 15px;
    box-shadow: 0 0 50px #00ff41;
}
.popup-btn {
    background: #00ff41;
    color: black;
    padding: 10px 20px;
    border: none;
    font-weight: bold;
    cursor: pointer;
    margin-top: 15px;
}
