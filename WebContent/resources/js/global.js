function init(context){
	var get=document.getElementById('bt');
	/*bt.addEventListener('click',clickme,false);*/
	bt.onclick=move(context);
}
function move(context) {
	location.href=context+"/douglas.do"
}