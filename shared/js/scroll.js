

function pageup() {
	var posi;
	posi = document.documentElement.scrollTop;
	moveObje(posi);
}
function moveObje(position) {
	move = position / 7;
	point = parseInt(position - move);
	scrollTo(0,point);
	if (point > 0) { setTimeout("moveObje(point)",1); }
}

