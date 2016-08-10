var context = {
	name : '',
	setContext : function(context){
		this.name = context;
	},
	init : function(context) {
		var bt_bom = document.querySelector('#bt_bom');
		var bt_dom = document.querySelector('#bt_dom');
		var bt_kaup = document.querySelector('#bt_kaup');
		var bt_creator = document.querySelector('#bt_creator');
		console.log('CONTEXT : '+context);
		this.setContext(context);
		console.log('CONTEXT : '+this.name);
		
		bt_bom.addEventListener('click',this.bom_go,false);
		bt_dom.addEventListener('click',this.dom_go,false);
		bt_kaup.addEventListener('click',this.kaup_go,false);
		bt_creator.addEventListener('click',this.creator_go,false);
	},
	bom_go : function() {
		location.href=context.name+'/douglas.do?page=bom';
	},
	dom_go : function() {
		location.href=context.name+'/douglas.do?page=dom';
	},
	creator_go : function() {
		location.href=context.name+'/douglas.do?page=creator';
	}
};
/*kaup*/
function kaup_init(){
	var bt_kaup_calc = document.querySelector('#bt_kaup_calc');
	bt_kaup_calc.addEventListener('click',kaup_calc,false);
}
function kaup_go(){
	location.href=getContext()+'/douglas.do?page=kaup';
}
function kaup_calc(){
	var name=document.querySelector('#name').value;
	var height=document.querySelector('#height').value;
	var weight=document.querySelector('#weight').value;
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
	document.querySelector('#result').innerHTML=name+' 의 카우푸결과 '+result;
	/*return name+" 은 BMI 지수는 "+ Double.parseDouble(String.format("%.2f", bmigisu)) +" 이고 "+kaupu+" 이다";*/
}
function account_spec(){
	var account = {
			account_no : 0,
			money : 0
	}
	account.account_no = Math.floor((Math.random() * 899999) + 100000);
	account.money = document.querySelector('#money').value;
	document.querySelector('#result_account').innerHTML=account.account_no;
}
function member_spec(){
	var member = new Object();
	member.name = document.querySelector('#name').value;
	member.age = 0;
	member.gender = '';
	var curyear = Number(new Date().getFullYear());
	var gendergubun = document.querySelector('#ssn').value.substring(7,8);
	var year = Number(document.querySelector('#ssn').value.substring(0,2));
	switch (Number(gendergubun)) {
	case 1:case 5:
		member.gender = "남";
		year += 1900;
		break;
	case 3:case 7:
		member.gender = "남";
		year += 2000;
		break;		
	case 2:case 6:
		member.gender = "여";
		year += 1900;
		break;
	case 4:case 8:
		member.gender = "여";
		year += 2000;
		break;
	default:
		break;
	}
	member.age = curyear - year + 1;
	document.querySelector('#result_name').innerHTML=member.name;
	document.querySelector('#result_age').innerHTML=member.age;
	document.querySelector('#result_gender').innerHTML=member.gender;
	
}
function deposit_spec(){
	var rest_money = 0;
	rest_money = rest_money + Number(document.querySelector('#money').value);
	document.querySelector('#rest_money').innerHTML=rest_money;
}
function withdrawal_spec(){
	var rest_money = 0;
	rest_money = rest_money - Number(document.querySelector('#money').value);
	document.querySelector('#rest_money').innerHTML=rest_money;
}
var create = {
	create_init : function(){
		document.querySelector('#bt_spec_show').addEventListener('click',member_spec,false);
		document.querySelector('#bt_make_account').addEventListener('click',account_spec,false);
		document.querySelector('#bt_deposit').addEventListener('click',deposit_spec,false);
		document.querySelector('#bt_withdrawal').addEventListener('click',withdrawal_spec,false);
	}
}
var member = {
		
}
