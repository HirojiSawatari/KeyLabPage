
window.onload = initBannerLink;
var adImages = new Array("shared/images/photo/photo1.jpg","shared/images/photo/photo2.jpg","shared/images/photo/photo3.jpg");
var adURL = new Array("#.html","#.html","#.html");
var thisAd = 0;

function rotate() {
	thisAd++;
	if (thisAd == adImages.length) {
		thisAd = 0;
	}
	document.getElementById("adBanner").src = adImages[thisAd];

	setTimeout("rotate()", 2 * 1000);
}

function newLocation() {
/*	document.location.href = "http://www." + adURL[thisAd];*/
	document.location.href = adURL[thisAd];
	return false;
}

function initBannerLink() {
	if (document.getElementById("adBanner").parentNode.tagName == "A") {
		document.getElementById("adBanner").parentNode.onclick = newLocation;
	}	
	rotate();
}