var carousel;
var cells;
var cellCount = 0; // cellCount set from cells-range input value
var selectedIndex = 20000;
var cellWidth; 
var cellHeight;
var rotateFn = 'rotateX';
var radius, theta;
var click = 0;
// console.log( cellWidth, cellHeight );


function rotateCarousel() {
  var angle = theta * (selectedIndex%cellCount) * -1;
  carousel.style.transform = 'translateZ(' + -radius + 'px) ' + 
    rotateFn + '(' + angle + 'deg)';
}

var prevButton = document.querySelector('#prev');
prevButton.addEventListener( 'click', function() {
  selectedIndex--;
  changeCarousel();
  rotateCarousel();
});

var nextButton = document.querySelector('#next');
nextButton.addEventListener( 'click', function() {
  selectedIndex++;
  changeCarousel();
  rotateCarousel();
});

function changeCarousel() {
  theta = 360 / cellCount;
  var cellSize = cellWidth
  radius = Math.round( ( cellSize / 3) / Math.tan( Math.PI / cellCount ) );
  for ( var i=0; i < cells.length; i++ ) {
    if ( i == ((selectedIndex*1) % cells.length)) {
      cells[i].style.display = "flex";
    }else{
      cells[i].style.display = "none";
    }
    var cell = cells[i];
    if (i < cells.length) {
      // visible cell
      var cellAngle = theta * i;
      cell.style.transform = rotateFn + '(' + cellAngle + 'deg) translateZ(' + radius + 'px)';
    }
  }
    rotateCarousel(length);
}

function api(){
  let y = 0;
  fetch("http://10.191.14.114:8080/super_hero")
  .then((response)=> response.json())
  .then((data)=>{
    cellCount = data.length
    data.forEach(element => {
      console.log(element)
      carCell = document.createElement("div")
      carCell.setAttribute("class","carousel__cell")
      carCell.style = `transform: rotateY(${y}deg) translateZ(288px); background-image : url(${element.image}); background-size:cover; border-radius : 20px`;
      card = document.createElement("div")
      card.setAttribute("id","card")
      title = document.createElement("h1")
      title.textContent = element.nomHero
      prenom = document.createElement("p")
      prenom.textContent =" Identitée : "+element.identiteSecrete
      pouvoir = document.createElement("p")
      pouvoir.textContent ="Pouvoir :"+element.pouvoir
      note = document.createElement("p")
      note.textContent ="Note : "+element.score
      commentaire = document.createElement("p")
      commentaire.textContent = "Commentaire : "+element.commentaire
      pointFaible = document.createElement("p")
      pointFaible.textContent="Point Faible : "+element.pointFaible
      card.appendChild(title)
      card.appendChild(prenom)
      card.appendChild(pouvoir)
      card.appendChild(pointFaible)
      card.appendChild(note)
      card.appendChild(commentaire)
      carCell.append(card)
      carousel = document.getElementsByClassName("carousel")
      carousel[0].append(carCell)
      y+=40
    });
    setting()
  })

}

function setting(){
  carousel = document.querySelector('.carousel');
  cells = carousel.querySelectorAll('.carousel__cell')
  cellWidth= carousel.offsetWidth;
  cellHeight= carousel.offsetHeight; 
  changeCarousel(length)
}

// set initials
window.onload = api();
