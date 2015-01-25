// -----------------------------------------------------------------------------
// Partner Exercise #2.1
// ---------------------

// Create an object such that the following code outputs the correct string:

var id    = 'jofNR_WkoCE';
var genre = 'club';

var video = {
	youtubeId: id, 
	genre:     genre
};

console.log('Youtube ID:', video.youtubeId);
// → Youtube ID: jofNR_WkoCE

console.log('Video genre:', video.genre);
// → Video genre: club


// -----------------------------------------------------------------------------
// Partner Exercise #2.2
// ---------------------

// Complete the following snippet (do not remove the square brackets) to make the 
// console log output the correct value:

var dog = {
	name: 'Bill'
};

console.log("The dog's name is:", dog['name']);
// → The dog's name is: Bill


// -----------------------------------------------------------------------------
// Partner Exercise #2.3
// ---------------------

// Use the variable (DO NOT type in 'title') to make the console log output the 
// correct value:

var book = {
	title: "How to Ruin People's Lives"
};

var propertyName = 'title';

console.log('The book title is:', book[propertyName]);
// → The book title is: How to Ruin People's Lives


// -----------------------------------------------------------------------------
// Partner Exercise #2.4
// ---------------------

// Complete the line of code so that Bob is rejected by the restaurant:

var reservations = {
	'Alice'  : true,
	'Charlie': true
};

var checkForReservation = function (name) {
	var r = reservations[name];

	return !!r;
};

console.log('Alice should have a reservation:', checkForReservation('Alice'));
console.log('Bob should not. Poor Bob', checkForReservation('Bob'));