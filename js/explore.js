// Reverse string
//Input: string
// Steps: 
	// Split string into letters
	// Re arrange letters last to first
	// Re join letters into string
	// Print new string
// Outpout: String reversed 

var reverse = function(string) {
	return string.split('').reverse().join('');
}

console.log(reverse("hello"))
