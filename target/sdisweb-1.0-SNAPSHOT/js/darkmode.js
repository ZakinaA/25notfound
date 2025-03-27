/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
document.addEventListener("DOMContentLoaded", function () {
    const toggleButton = document.getElementById("darkModeToggle");
    const body = document.body;
    
    // Vérifier si un mode est déjà sauvegardé dans le localStorage
    if (localStorage.getItem("darkMode") === "enabled") {
        body.classList.add("dark-mode");
        toggleButton.textContent = "☀️ Mode Clair";
    }

    // Événement de clic pour changer le mode
    toggleButton.addEventListener("click", function () {
        if (body.classList.contains("dark-mode")) {
            body.classList.remove("dark-mode");
            localStorage.setItem("darkMode", "disabled");
            toggleButton.textContent = "🌙 Mode Sombre";
        } else {
            body.classList.add("dark-mode");
            localStorage.setItem("darkMode", "enabled");
            toggleButton.textContent = "☀️ Mode Clair";
        }
    });
});



