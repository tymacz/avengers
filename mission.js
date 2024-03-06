fetch("http://10.191.14.114:8080/Mission")
    .then(response => response.json())
    .then(data => {
        data.forEach((user, index) => {
            h2 = document.createElement("h2")
            h2.textContent = "NOM DE MISSION : " + user.titre
            content = document.getElementsByClassName("content-left")
            content[(user.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "TYPE : " + user.nature
            content = document.getElementsByClassName("content-left")
            content[(user.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "INFO : " + user.info
            content = document.getElementsByClassName("content-left")
            content[(user.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "NIVEAU DE GRAVITÉ : " + user.niveau_gravite
            content = document.getElementsByClassName("content-left")
            content[(user.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "NIVEAU DE GRAVITÉ : " + user.niveau_urgence
            content = document.getElementsByClassName("content-left")
            content[(user.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "RÉFÉRENCE LITIGE : " + user.litige.id_litige
            content = document.getElementsByClassName("content-left")
            content[(user.id_mission)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "RÉFÉRENCE CIVIL : " + user.civil.id_civil
            content = document.getElementsByClassName("content-left")
            content[(user.id_mission)-1].appendChild(h2)
    })
})