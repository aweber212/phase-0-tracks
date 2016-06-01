arr = ["Hey", "What time is it", "IDK Brah"]

var lgth = 0;
var longest;

for(var i=0; i < arr.length; i++){
    if(arr[i].length > lgth){
        var lgth = arr[i].length;
        longest = arr[i];
    }      
} 

console.log(longest)

(function generator(x) {
	for (var i = 0; i < x.length; i++); {
		console.log(x[i]);
	})
