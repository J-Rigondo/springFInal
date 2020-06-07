const changeName = document.getElementById("productImg");
const fileLabel = document.getElementById("fileLabel");

function handleChange(e){
	console.log(e);
	const {value} = e.target;
	
	fileLabel.innerHTML = value.substring(12);
	
}

function init(){
	changeName.addEventListener("change", handleChange);
}

if(changeName)
	init();
