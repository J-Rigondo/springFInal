const timeZone = document.getElementById("time-zone");

function getTime(){
	const date = new Date();
	
	const hours = date.getHours();
	const minutes = date.getMinutes();
	const seconds = date.getSeconds();
	timeZone.innerHTML = "" + (hours < 10 ? "0"+hours : hours ) + ":"
	+(minutes < 10 ? "0"+minutes : minutes ) + ":" + (seconds < 10 ? "0"+seconds : seconds )
	+(hours > 12 ? "PM" : "AM")
		
}

function init(){
		getTime();
		setInterval(getTime, 1000);
}

if(timeZone)
	init();


