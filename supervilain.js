const sidebar = document. querySelector ('.sidebar');
        const toggleBtn = document. querySelector('.toggle-btn');
        
        toggleBtn.addEventListener('click', () => {
            sidebar.classList. toggle('active');
        }) ;




document.addEventListener('DOMContentLoaded', function() {
    const slideButtons = document.querySelectorAll('.slide-btn');
    let currentIndex = 0; 

    slideButtons.forEach(button => {
        button.addEventListener('click', function() {
            const container = document.querySelector('.wrapper');
            const cardWidth = document.querySelector('.card').clientWidth;
            const gap = 160; 
            const moveX = cardWidth + gap;

            if(this.classList.contains('right')) {
                currentIndex += 12;
            } else {
                currentIndex -= 12; 
            }

            
            currentIndex = Math.min(Math.max(currentIndex, 0), 24); 

            const shift = -moveX * currentIndex / 12;
            container.style.transform = `translateX(${shift}px)`;
        });
    });
});
