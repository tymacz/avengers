fetch("http://10.191.14.113:8080/Mission")
    .then(response => response.json())
    .then(data => {
        data.forEach((mission, index) => {
            h2 = document.createElement("h2")
            h2.textContent = "Nom : " + mission.civil.nom_civil
            content = document.getElementsByClassName("info-civil")
            content[(mission.civil.id_civil)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "Prénom : " + mission.civil.prenom_civil
            content = document.getElementsByClassName("info-civil")
            content[(mission.civil.id_civil)-1].appendChild(h2)


            const date = new Date(mission.civil.date_naissance)
            const options = { year: 'numeric', month: 'long', day: 'numeric' };
            const dateFormatted = new Intl.DateTimeFormat('fr-FR', options).format(date);

            h2 = document.createElement("h2")
            h2.textContent = "Date de naissance : " + dateFormatted
            content = document.getElementsByClassName("info-civil")
            content[(mission.civil.id_civil)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "Nationalité : " + mission.civil.nationalite
            content = document.getElementsByClassName("info-civil")
            content[(mission.civil.id_civil)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "Numéro de téléphone : " + mission.civil.numero_tel
            content = document.getElementsByClassName("info-civil")
            content[(mission.civil.id_civil)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "Nombre d'incident(s) déclanchés : " + mission.civil.nb_incident
            content = document.getElementsByClassName("info-civil")
            content[(mission.civil.id_civil)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "Nom de missions déclanchées : " + mission.civil.nb_mission
            content = document.getElementsByClassName("info-civil")
            content[(mission.civil.id_civil)-1].appendChild(h2)
    })
})