fetch("http://10.191.14.113:8080/Mission")
    .then(response => response.json())
    .then(data => {
        data.forEach((mission, index) => {
            h2 = document.createElement("h2")
            h2.textContent = "NOM DE MISSION : " + mission.titre
            content = document.getElementsByClassName("content-left")
            content[(mission.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "TYPE : " + mission.nature
            content = document.getElementsByClassName("content-left")
            content[(mission.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "INFO : " + mission.info
            content = document.getElementsByClassName("content-left")
            content[(mission.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "NIVEAU DE GRAVITÉ : " + mission.niveau_gravite
            content = document.getElementsByClassName("content-left")
            content[(mission.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "NIVEAU D'URGENCE: " + mission.niveau_urgence
            content = document.getElementsByClassName("content-left")
            content[(mission.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "RÉFÉRENCE LITIGE : " + mission.litige.id_litige
            content = document.getElementsByClassName("content-left")
            content[(mission.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "RÉFÉRENCE CIVIL : " + mission.civil.id_civil
            content = document.getElementsByClassName("content-left")
            content[(mission.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2");
            var span = document.createElement("span");
            span.textContent = mission.civil.nom_civil;
            span.style.color = "blue";
            span.style.fontWeight = "bold"; 
            h2.textContent = "NOM DU CIVIL : ";
            h2.appendChild(span);
            h2.addEventListener("click", function() {
                window.location.href = '/civil.html';
            });
            content = document.getElementsByClassName("content-left");
            content[(mission.id_mission)-1].appendChild(h2);

            div = document.getElementsByClassName("right1")[mission.id_mission]
            div.style = `background-image : url(${mission.litige.piece.piece.photo})`;
    })
})