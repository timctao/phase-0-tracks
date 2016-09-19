// Release 0: Write a function that takes an array as input and returns the longest string in the array

function longest_phrase(array) {
	var longest_phrase = "";
	for (var index = 0; index < array.length; index++) {
		if (array[index].length > longest_phrase.length) {
			longest_phrase = array[index]
		}
	}
	return (longest_phrase)
}

// Release 1: Write a function that compares two values

function match_pair(input_1, input_2) {
	match_pair = null
	if (input_1.name == input_2.name) {
		match_pair = true
	} else if (input_1.age == input_2.age) {
		match_pair = true
	} else {
		match_pair = false
	}
	return match_pair
}

// Release 2: Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
// I was not able to complete this in time

// function random_letters() {
	
// }

// Driver code

var array = [
	"long phrase",
	"longest phrase",
	"longer phrase",
	"the quick brown fox jumps over the lazy dog"
]

console.log(longest_phrase(array))