var context= '';
function getContext(){
	return this.context;
}
function setContext(context){
	this.context = context;
}
function init(context){
	var bt_bom=document.querySelector('#bom');
	var bt_dom=document.querySelector('#dom');
	var bt_kaup=document.querySelector('#kaup');
	
	console.log('CONTEXT : '+context);
	this.setContext(context);
	console.log('CONTEXT : '+getContext());
	
	bt_bom.addEventListener('click',bom_go,false);
	bt_dom.addEventListener('click',dom_go,false);
	bt_kaup.addEventListener('click',kaup_go,false);
	
}
function bom_go(){
	location.href=getContext()+'/douglas.do?page=bom';
}
function dom_go(){
	location.href=getContext()+'/douglas.do?page=dom';
}
/*kaup*/
function kaup_init(){
	var bt_kaup_calc = document.getElementById('bt_kaup_calc');
	bt_kaup_calc.addEventListener('click',kaup_calc,false);
}
function kaup_go(){
	location.href=getContext()+'/douglas.do?page=kaup';
}
function kaup_calc(){
	var name=document.querySelector('#name').value;
	var height=document.getElementById('height').value;
	var weight=document.getElementById('weight').value;
	console.log('name'+name);
	console.log('height'+height);
	console.log('weight'+weight);
	var result = '';
	var kaup = weight / (height / 100) / (height / 100);
	console.log('kaup : '+kaup);
	if (kaup < 18.5) {
		result = "저체중";
	} else if (kaup <= 22.9 && kaup >= 18.5) {
		result = "정상";
	} else if (kaup <= 24.9 && kaup >= 23.0) {
		result = "위험체중";
	} else if (kaup <= 29.9 && kaup >= 25.0) {
		result = "비만1단계";
	} else if (kaup <= 40 && kaup >= 30.0) {
		result = "비만2단계";
	} else if (kaup > 40) {
		result = "비만3단계";
	}
	document.getElementById('result').innerHTML=name+' 의 카우푸결과 '+result;
	/*return name+" 은 BMI 지수는 "+ Double.parseDouble(String.format("%.2f", bmigisu)) +" 이고 "+kaupu+" 이다";*/
}