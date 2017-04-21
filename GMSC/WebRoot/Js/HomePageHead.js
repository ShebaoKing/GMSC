function time(){
	var date=new Date();
	var dd=date.getDate();
	var yy=date.getFullYear();
	var ww=date.getDay();
	var MM=date.getMonth();
	var ss=date.getSeconds();
	var hh=date.getHours();
	var mm=date.getMinutes();
	ss=ch(ss);
	mm=ch(mm);
	hh=ch(hh);
	document.getElementById("time").innerHTML=hh+":"+mm+":"+ss;
	setTimeout("time()", 1000);
}
function ch(i){
    if(i<10){
    	i='0'+i;
    }
    return i;
}