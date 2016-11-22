function showDiv(num){
	var num = num;
	var div1 = document.getElementById("subject1");
	var div2 = document.getElementById("subject2");
	var div3 = document.getElementById("subject3");
	var div4 = document.getElementById("subject4");
	switch(num){
		case 1 : div1.style.display="block";
				 div2.style.display="none";
				 div3.style.display="none";
				 div4.style.display="none";
		break;
		case 2 : div1.style.display="none";
				 div2.style.display="block";
				 div3.style.display="none";
				 div4.style.display="none";
		break;
		case 3 : div1.style.display="none";
				 div2.style.display="none";
				 div3.style.display="block";
				 div4.style.display="none";
		break;
		case 4 : div1.style.display="none";
				 div2.style.display="none";
				 div3.style.display="none";
				 div4.style.display="block";
		break;
	}
}