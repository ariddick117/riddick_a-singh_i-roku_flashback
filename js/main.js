// todo => use a key to track the current video, or just pass the video in as a ref to the function and grab its source
  

(function(){
	"use strict";
	
	console.log("fired");

	var button = document.querySelector("#button");
	var burgerCon = document.querySelector("#burgerCon");

	function hamburgerMenu() {
		burgerCon.classList.toggle("slideToggle");
		button.classList.toggle("expanded");
	}

	button.addEventListener("click", hamburgerMenu, false);
		
})();

//Flickity for gallery corousel
var flkty = new Flickity( '.main-gallery', {
  
  cellAlign: 'left',
  contain: true
});




