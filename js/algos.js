// Release 0: Write a function that takes an array as input and returns the longest string in the array

function longest_phrase(array) {
	var longest_phrase = "";
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longest_phrase.length) {
			longest_phrase = array[i]
		}
	}
	return (longest_phrase)
}

var array = [
	"long phrase",
	"longest phrase",
	"longer phrase",
	"the quick brown fox jumps over the lazy dog"
]

console.log(longest_phrase(array))