var carousel = document.querySelector('.carousel');
var cells = carousel.querySelectorAll('.carousel__cell');
var cellCount; // cellCount set from cells-range input value
var selectedIndex = 20000;
var cellWidth = carousel.offsetWidth;
var cellHeight = carousel.offsetHeight;
var rotateFn = 'rotateX';
var radius, theta;
var click = 0;
// console.log( cellWidth, cellHeight );


function rotateCarousel() {
  var angle = theta * (selectedIndex%20) * -1;
  carousel.style.transform = 'translateZ(' + -radius + 'px) ' + 
    rotateFn + '(' + angle + 'deg)';
    console.log((selectedIndex)%20);

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
  cellCount = 20;
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
    rotateCarousel();
}

// set initials
window.onload =  changeCarousel();
