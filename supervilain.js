const sidebar = document. querySelector ('.sidebar');
        const toggleBtn = document. querySelector('.toggle-btn');
        
        toggleBtn.addEventListener('click', () => {
            sidebar.classList. toggle('active');
        }) ;





fetch("http://10.191.14.114:8080/super_vilain")
    .then(response => response.json())
    .then(data => {
        data.forEach((user, index) => {
            console.log(user)
            const userName = user.nom_vilain;
            const userId = user.id_vilain;
            const userNameDiv = document.getElementById(`userName${userId}`);
            for (let index = 0; index < userName.length; index++) {
                span = document.createElement("span")              
                span.textContent =  userName[index].toUpperCase()
                console.log(userNameDiv)
                userNameDiv.appendChild(span)
            }
            console.log(userNameDiv)

            h4 = document.createElement("h4")
            h4.textContent = user.nom_vilain
            description = document.getElementsByClassName("description")
            description[(user.id_vilain)-1].appendChild(h4)

            p = document.createElement("p")
            p.textContent = "IDENTITÉ SECRÈTE : " + user.identite_secrete + " / POUVOIR : " + user.pouvoir 
            description = document.getElementsByClassName("description")
            description[(user.id_vilain)-1].appendChild(p)

            p = document.createElement("p")
            p.textContent = "POINTS FAIBLE : " + user.point_faible + " / COMMENTAIRE : " + user.commentaire
            description = document.getElementsByClassName("description")
            description[(user.id_vilain)-1].appendChild(p)

            img = document.getElementsByClassName("card")[user.id_vilain-1]
            img.style = `background-image : url(${user.image})`;
        });
    })
    .catch(error => console.error('Erreur lors de la récupération des données utilisateur:', error));





