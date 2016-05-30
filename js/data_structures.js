var colors = ["Green", "Blue", "Red", "Gold"]
var names = ["Ed", "Lundqvist", "The Colonel", "Sparta"]

colors.push("Velvet")
names.push("Aristrocrat")


for (var i = 0; i < colors.length; i++) {
	var horse = {}
	horse[names[i]] = colors[i];
	console.log(horse)
}



console.log(horse)