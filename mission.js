fetch("https://65e59930d7f0758a76e6cc47.mockapi.io/adresse")
    .then(response => response.json())
    .then(data => {
        data.forEach((user, index) => {
            h2 = document.createElement("h2")
            h2.textContent = "NOM DE MISSION : " + user.nom
            content = document.getElementsByClassName("content")
            content[(user.id)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "TYPE : " + user.type
            content = document.getElementsByClassName("content")
            content[(user.id)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "LOCALISATION : " + user.localistion
            content = document.getElementsByClassName("content")
            content[(user.id)-1].appendChild(h2)

            h2 = document.createElement("h2")
            h2.textContent = "MÉCHANT : " + user.mechant
            content = document.getElementsByClassName("content")
            content[(user.id)-1].appendChild(h2)
    })
})