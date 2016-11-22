function black(num){
   num.back();
   return false;
}

function checkForm02(){
	var name=document.form03.name.value;
	var email=document.form03.email.value;
	var company=document.form03.company.value;
	var address=document.form03.address.value;
	var tel=document.form03.tel.value;
	var email22=document.form03.email22.value;
	var email222=document.form03.email222.value;
	if(name=="" || email=="" || company=="" || address=="" || tel=="" || email22=="" || email222==""){
	return false;
	}
	
	}
function  checkAnimation(){
	 var name=document.form03.Name.value;
	 var Tel=document.form03.Tel.value;
	 var Email=document.form03.Email.value;
	 
	 if(name=="" || Tel=="" || Email==""){
		 return false;
		 }
	
	}// JavaScript Document
	
	
	

function focusColor(i){
	i.style.borderColor='#333333';
	i.style.backgroundColor='#eeeeee';
	i.style.borderWidth='1px';
}
function blurColor(i){
	i.style.borderColor='#999999';
	i.style.backgroundColor='#ffffff';
	i.style.borderWidth='1px'
}


function resetBtn(fm){
    fm.reset();
    return false;
}
