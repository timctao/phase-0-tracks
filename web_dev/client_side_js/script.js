console.log("The script is running!");

var photo = document.getElementById('main-photo');
photo.style.border = '3px solid #FCD271';

function changeBorderColor () {
	var photo = document.getElementById('main-photo');
	photo.style.border = '10px solid blue';
}

photo.addEventListener("click", changeBorderColor);