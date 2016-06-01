// Create function that returns longest string in array
// Input: Array of various strings
// Steps:
	// Declare length and longest variables
	// Create loop to go through arry and determine length of all items
	// Declare length variable equal to index of longest item
	// Set longest variable equal to index of longest item
// Output: Longest string

arr = ["Hey", "What time is it", "IDK Brah"]

var lgth = 0;
var longest;

for(var i=0; i < arr.length; i++){
    if(arr[i].length > lgth){
        var lgth = arr[i].length;
        longest = arr[i];
    }      
} 

// Check to see if objects share at least one key-value pair
// Input: Two objects
// Steps
	// Create function with two objects as input
		// Create function to find differences
			// Compare two objects
			// Set variable of for same items. 
			// If key-value pair equals in the two objects set them as variable
			// return same variable
// Output: True or false user friendly statement

// After a bit of googling, I was able to create a function that compared
// two objects and returned any that were the same in both.
// However, I couldn't figure out a way to return true or false.
// Every if/else statement I tried to make would only return true.
// Any help would be appretiated with that.

obj_1 = {A: 10, B: 20, C: 30}

obj_2 = {A: 10, B: 22, C: 30}

function diffObject(a, b) {
  return Object.keys(a).reduce(function(str, x) {
    if (a[x] == b[x]) str[x] = b[x];
    return str;
  }, {});
}

console.log(diffObject (obj_1, obj_2))

// Generate random test data
// Input: An integer, x
// Steps:
	// Create function with x input
	// Declare variable with text
	// Set all possible random characters of string
	// Create loop
		// Create three strings of random characters and random lengths
// Output: Array of x number of random strings

function randomTest(x)

{
	var text = "";
	var alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
	
	// Loop goes here. The loop is what I'm unable to figure out. I tried
	// googling, but the only loop I could create was one that returned
	// a single string of (x) length.

	for( var i=0; i < x; i++ )
        text += alph.charAt(Math.floor(Math.random() * alph.length));


	return text;
}	

console.log(randomTest(3))
}
