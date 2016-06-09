console.log("The script is running!");

var change_font = document.getElementsByTagName("li")
var chnge = change_font[0]
chnge.style.border = "3px solid red";

function addBorder(event) {
	console.log("click happened!");
	console.log(event);
	event.target.style.border = "2px solid green";
}

var text = document.getElementsByTagName("strong");
var txt = text[0]
txt.addEventListener("click", addBorder);



