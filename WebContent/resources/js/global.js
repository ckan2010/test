var global = {
	context : '',
	setContext : function(param){
		this.context = param;
	},
	init : function(param) {
		console.log('CONTEXT : '+this.param);
		this.setContext(param);
		console.log('CONTEXT : '+this.context);
		document.querySelector('#bt_js_go').onclick=this.move();
	},
	move : function(){
		location.href=this.context+"/douglas.do";
	}
};