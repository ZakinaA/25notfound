<%-- 
    Document   : header
    Created on : 22 mars 2025, 00:09:10
    Author     : liamd
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDIS - Navigation</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../styles/styles.css">
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">SDIS Web</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPompier" role="button" data-bs-toggle="dropdown">Pompier</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/sdisweb/ServletPompier/lister">Liste des Pompiers</a></li>
                        <li><a class="dropdown-item" href="/sdisweb/ServletPompier/ajouter">Ajouter un Pompier</a></li>
                    </ul>
                </li>

                <li class="nav-item"><a class="nav-link" href="<!--chemin à compléter-->">Interventions</a></li>
                <li class="nav-item"><a class="nav-link" href="<!--chemin à compléter-->">Caserne</a></li>
                <li class="nav-item"><a class="nav-link" href="<!--chemin à compléter-->">Fonctions</a></li> 
            </ul>
        </div>
    </div>
</nav>
<button id="darkModeToggle" class="btn btn-outline-light">🌙 Mode Sombre</button>
<script src="../js/darkmode.js" defer></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>