<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="it.unisa.bean.OrdineBean" %>
<%@ page import="it.unisa.bean.OggettiCarrelloBean" %>
<%@ page import="it.unisa.bean.User" %>
<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista Ordini</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-FI2HjRUxjYpO7ZnuN5N2t1Ee5CBEoHkRy8uav4t3hZf2sT5nS5TNtNtIefc0rU6YU+j1eL4pb4yD4he/7xm+9A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
<style>
    /* Stili aggiuntivi */
    body {
        background-color: #f8f9fa;
        font-family: 'Arial', sans-serif;
    }

    .table {
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
    }

    .btn {
        padding: 0.3rem 1rem;
        font-size: 0.9rem;
    }

    .btn-outline-secondary {
        color: #6c757d;
        border-color: #6c757d;
    }

    .btn-outline-secondary:hover {
        color: #ffffff;
        background-color: #6c757d;
        border-color: #6c757d;
    }

    .review-popup {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        display: flex;
        justify-content: center;
        align-items: center;
        z-index: 1000;
        display: none;
        overflow-y: auto; /* Aggiunto per permettere lo scroll se il contenuto � troppo alto */
    }

    .review-content {
        background-color: #ffffff;
        width: 70%; /* Default width to ensure it is slightly wider */
        max-width: 90%; /* Adattabile alla larghezza della finestra */
        min-width: 60%; /* Minimum width to ensure it's always wide enough */
        max-height: 90vh; /* Limita l'altezza massima al 90% dell'altezza della finestra */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        position: relative;
        overflow-y: auto; /* Aggiunto per permettere lo scroll all'interno del contenuto */
    }

    .close {
        position: absolute;
        top: 10px;
        right: 10px;
        font-size: 1.5rem;
        cursor: pointer;
        color: #888888;
    }

    .close:hover {
        color: #555555;
    }
</style>

</head>
<body>

<%
    User u = (User) session.getAttribute("user");
%>

<% if ("amministratore".equals(u.getRole())) { %>
<div class="container mt-3">
    <h3 class="text-center mb-4">Gestione Ordini</h3>
    <div class="row mb-4">
        <div class="col-md-4">
            <button type="button" class="btn btn-outline-secondary btn-block" onclick="visualizzaTuttiGliOrdini()">
                <i class="fas fa-list"></i> Visualizza Tutti Gli Ordini
            </button>
        </div>
        <div class="col-md-4">
            <form method="get" action="AreaPersonaleControl" onsubmit="cercaPerCliente(event)">
                <input type="hidden" name="action" value="visualizzaOrdiniCliente">
                <div class="input-group">
                    <input type="text" name="codiceUtente" class="form-control" placeholder="Codice Utente" required>
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit">
                            <i class="fas fa-search"></i> Cerca per Cliente
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-4">
            <form method="get" action="AreaPersonaleControl" onsubmit="cercaPerData(event)">
                <input type="hidden" name="action" value="visualizzaOrdiniData">
                <div class="input-group">
                    <input type="date" name="dataOrdine" class="form-control" required>
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit">
                            <i class="fas fa-calendar"></i> Cerca per Data
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div id="ordineRisultati"></div>
</div>
<% } else { %>
<div class="container mt-3">
    <h3 class="text-center mb-4">Lista Ordini</h3>
    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Codice Ordine</th>
                <th scope="col">Codice Utente</th>
                <th scope="col">Carta</th>
                <th scope="col">Codice Sconto</th>
                <th scope="col">Data</th>
                <th scope="col">Azioni</th>
            </tr>
        </thead>
        <tbody>
            <% List<OrdineBean> ordiniList = (List<OrdineBean>) request.getAttribute("bean");
               if (ordiniList != null) {
                   for (OrdineBean ordine : ordiniList) {
                       List<OggettiCarrelloBean> recapItems = new ArrayList<>(ordine.getListItems());
            %>
            <tr>
                <td><%= ordine.getCodOrdine() %></td>
                <td><%= ordine.getCodiceUtente() %></td>
                <td><%= ordine.getCarta() %></td>
                <td><%= ordine.getCodSconto() %></td>
                <td><%= ordine.getData() %></td>
                <td>
                    <button type="button" class="btn btn-outline-secondary btn-sm" onclick="mostraArticoli('<%= ordine.getCodOrdine() %>')">
                        <i class="fas fa-list"></i> Mostra Articoli
                    </button>
                    <button type="button" class="btn btn-outline-secondary btn-sm ml-2" onclick="scaricaFattura('<%= ordine.getCodOrdine() %>')">
                        <i class="fas fa-file-invoice"></i> Visualizza Fattura
                    </button>
                    <button type="button" class="btn btn-outline-secondary btn-sm ml-2" onclick="inviaRecensione('<%= ordine.getCodOrdine() %>', '<%= ordine.getCodiceUtente() %>')">
                        <i class="fas fa-star"></i> Recensione
                    </button>
                </td>
            </tr>
            <tr id="recapItems_<%= ordine.getCodOrdine() %>" style="display: none;">
                <td colspan="6">
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Immagine</th>
                                <th scope="col">Codice Articolo</th>
                                <th scope="col">Prezzo</th>
                                <th scope="col">Quantit�</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% if (recapItems != null && !recapItems.isEmpty()) {
                                   for (OggettiCarrelloBean item : recapItems) {
                                       if (item != null && item.getCod_articolo() != null) {
                            %>
                            <tr>
                                <td>
                                    <img src="<%= item.getImmagineCopertina() %>" alt="Immagine Articolo" style="width: 50px; height: 50px;">
                                </td>
                                <td><%= item.getCod_articolo() %></td>
                                <td><%= item.getPrezzo() %></td>
                                <td><%= item.getQuantita() %></td>
                            </tr>
                            <%             }
                                   }
                               } else { %>
                            <tr>
                                <td colspan="4">Nessun articolo trovato.</td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </td>
            </tr>
            <%     }
               }
            %>
        </tbody>
    </table>
</div>
<% } %>

<!-- Pop-up per la recensione -->
<div id="recensionePopup" class="review-popup">
    <div class="review-content">
        <span class="close" onclick="closePopup()">&times;</span>
        <div id="zonaRecensione"></div>
    </div>
</div>

<!-- Pop-up per visualizzare tutti gli ordini -->
<div id="popUpOrdini" class="review-popup">
    <div class="review-content" style="width: 80%; max-height: 80vh; overflow-y: auto;">
        <span class="close" onclick="closeOrdiniPopup()">&times;</span>
        <div id="popUpOrdiniContent">
            <!-- Il contenuto verr� inserito dinamicamente tramite JavaScript -->
        </div>
    </div>
</div>

<!-- JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    var username = "<%= u.getUsername() %>";

    function scaricaFattura(codOrdine) {
        var url = "Fattura.jsp";
        $.ajax({
            url: 'AreaPersonaleControl',
            method: 'GET',
            data: {
                action: 'scaricaFattura',
                codOrdine: codOrdine
            },
            xhrFields: {
                responseType: 'blob'
            },
            success: function(data, status, xhr) {
                window.location.href = url;
            },
            error: function(xhr, status, error) {
                console.error('Errore durante la generazione della fattura:', status, error);
            }
        });
    }
    function mostraArticoli(codiceOrdine) {
        console.log('Mostro articoli per ordine:', codiceOrdine); // Aggiungi il log per il debug
        var recapItemsRow = document.getElementById("recapItems_" + codiceOrdine);
        if (recapItemsRow.style.display === "none") {
            recapItemsRow.style.display = "table-row";
        } else {
            recapItemsRow.style.display = "none";
        }
    }

    function inviaRecensione(codiceOrdine, username) {
        console.log('Invio recensione per ordine:', codiceOrdine, 'e utente:', username); // Aggiungi il log per il debug
        $.ajax({
            url: 'AreaPersonaleControl',
            method: 'POST',
            data: {
                action: 'recensione',
                codOrdine: codiceOrdine,
                username: username
            },
            success: function(response) {
                $('#zonaRecensione').html(response);
                $('#recensionePopup').fadeIn(); // Animazione di fade-in per il pop-up della recensione
            },
            error: function(xhr, status, error) {
                console.error('Errore durante l\'invio della recensione:', status, error);
            }
        });
    }

    function closePopup() {
        console.log('Chiudo popup recensione'); // Aggiungi il log per il debug
        document.getElementById("recensionePopup").style.display = "none";
    }

    function closeOrdiniPopup() {
        console.log('Chiudo il pop-up ordini'); // Aggiungi il log per il debug
        document.getElementById("popUpOrdini").style.display = "none";
    }

    function visualizzaTuttiGliOrdini() {
        console.log('Visualizzo tutti gli ordini'); // Aggiungi il log per il debug
        $.ajax({
            url: 'AreaPersonaleControl',
            method: 'GET',
            data: {
                action: 'showOrdini2',
                username: "Alduccio"
            },
            success: function(response) {
                // Mostra il pop-up con il contenuto degli ordini
                document.getElementById("popUpOrdiniContent").innerHTML = response;
                document.getElementById("popUpOrdini").style.display = "flex";
            },
            error: function(xhr, status, error) {
                console.error('Errore durante il recupero degli ordini:', status, error);
            }
        });
    }

    function cercaPerCliente(event) {
    	
        event.preventDefault(); // Previene l'invio del form
        console.log('Cerca per cliente'); // Aggiungi il log per il debug
        var form = event.target;
        var codiceUtente = form.querySelector('input[name="codiceUtente"]').value;
        console.log(codiceUtente);
        visualizzaOrdiniPerCliente(codiceUtente);
    }

    function cercaPerData(event) {
        event.preventDefault(); // Previene l'invio del form
        console.log('Cerca per data'); // Aggiungi il log per il debug
        var form = event.target;
        var dataOrdine = form.querySelector('input[name="dataOrdine"]').value;
        visualizzaOrdiniPerData(dataOrdine);
    }

    function visualizzaOrdiniPerCliente(codiceUtente) {
        $.ajax({
            url: 'AreaPersonaleControl',
            method: 'GET',
            data: {
                action: 'showOrdiniNome',
                username: codiceUtente
            },
            success: function(response) {
                document.getElementById("popUpOrdiniContent").innerHTML = response;
                document.getElementById("popUpOrdini").style.display = "flex";            },
            error: function(xhr, status, error) {
                console.error('Errore durante il recupero degli ordini per cliente:', status, error);
            }
        });
    }


    function visualizzaOrdiniPerData(dataOrdine) {
        $.ajax({
            url: 'AreaPersonaleControl',
            method: 'GET',
            data: {
                action: 'showOrdiniData',
                dataOrdine: dataOrdine
            },
            success: function(response) {
                document.getElementById("popUpOrdiniContent").innerHTML = response;
                document.getElementById("popUpOrdini").style.display = "flex";            },
            error: function(xhr, status, error) {
                console.error('Errore durante il recupero degli ordini per data:', status, error);
            }
        });
    }
</script>
</body>
</html>
