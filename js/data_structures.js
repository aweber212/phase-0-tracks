var colors = ["Green", "Blue", "Red", "Gold"]
var names = ["Ed", "Lundqvist", "The Colonel", "Sparta"]

colors.push("Velvet")
names.push("Aristrocrat")


for (var i = 0; i < colors.length; i++) {
	var horse = {}
	horse[names[i]] = colors[i];
	console.log(horse);
}

console.log("-----")

function Car(brand, model, color, isElectric) {

	this.brand = brand;
	this.model = model
	this.color = color
	this.isElectric = isElectric
	this.vroom = function () { console.log("VROOOOOOOOOM!!!"); };

}

var Camry = new Car("Toyota", "Camry", "Silver", false);
console.log("This is a " + Camry.color + " " + Camry.brand + " " + Camry.model)
	if (this.isElectric) {
		console.log("It is Electric")
	} else {
		console.log("It is not Electric")
	}
Camry.vroom()
console.log("-----")

var Volt = new Car("Chevy", "Volt", "Metallic Blue", true);
console.log("This is a " + Volt.color + " " + Volt.brand + " " + Volt.model)
	if (this.isElectric) {
		console.log("It is Electric")
	} else {
		console.log("It is not Electric")
	}
Volt.vroom()
console.log("-----")

var Lambo = new Car("Lamborghini", "Aventador", "Fire Red", false)
console.log("This is a " + Lambo.color + " " + Lambo.brand + " " + Lambo.model)
	if (this.isElectric) {
		console.log("It is Electric")
	} else {
		console.log("It is not Electric")
	}
Lambo.vroom()