// This is how you comment in javascript instead of # in ruby
// This program will take an input of a string, reverse it, and store it in a variable
// For each letter in the string, pass it into an array
// Call array functions to reverse the array, join the array back into a string
// Assign a variable to the new resulting reversed string
// Print the string

function reverse_string(word) {
	var str = word;
	var array = str.split('');
	var reverse_array = array.reverse();
	var result = reverse_array.join('')
	console.log(result)
}

reverse_string("hello")
reverse_string("Javascript is not as cool as ruby")
reverse_string("abcdefghijklmnopqrstuvwxyz")