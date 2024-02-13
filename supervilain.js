const sidebar = document. querySelector ('.sidebar');
        const toggleBtn = document. querySelector('.toggle-btn');
        
        toggleBtn.addEventListener('click', () => {
            sidebar.classList. toggle('active');
        }) ;




        document.addEventListener('DOMContentLoaded', function() {
            var angle = 0;
            document.getElementById('prev').addEventListener('click', function() {
              angle += 30; // Ajustez ce nombre en fonction du nombre de faces et de l'angle que vous avez défini
              document.querySelector('.carousel').style.transform = 'rotateY(' + angle + 'deg)';
            });
            document.getElementById('next').addEventListener('click', function() {
              angle -= 30; // Ajustez ce nombre en fonction du nombre de faces et de l'angle que vous avez défini
              document.querySelector('.carousel').style.transform = 'rotateY(' + angle + 'deg)';
            });
          });