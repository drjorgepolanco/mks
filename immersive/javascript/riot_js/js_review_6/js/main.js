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
// → Alice should have a reservation: true

console.log('Bob should not. Poor Bob', checkForReservation('Bob'));
// → Bob should not. Poor Bob false


// -----------------------------------------------------------------------------
// Partner Exercise #3.1
// ---------------------

// Write a for loop that calls the following function 16 times.

var ringDoorbell = function () {
	console.log('Ding-dong!');
};

for (var i = 0; i < 16; i += 1) {
	ringDoorbell();
};
// → (16) Ding-dong!


// -----------------------------------------------------------------------------
// Partner Exercise #3.2
// ---------------------

// Complete the function to add loudness number of exclamation marks to phrase:

var amplify = function (phrase, loudness) {
	var result = '';
	result += phrase;
	for (var i = 0; i < loudness; i += 1) {
		result += '!';
	}
	return result;
};

console.log('Result should be "hello?!!!!!"', amplify('hello?', 5));
// → Result should be "hello?!!!!!" hello?!!!!!


// -----------------------------------------------------------------------------
// Partner Exercise #3.3
// ---------------------

// Create a function strMult that takes two parameters str and times and returns 
// that string multiplied by the given number of times.

// Recursive
function strMult(str, times) {
	if (times === 0) {
		return "";
	}
	else {
		return str + strMult(str, times - 1); 
	}
};

// For Loop
function strMult(str, times) {
	result = "";
	for (var i = 0; i < times; i += 1) {
		result += str;
	}
	return result;
};

console.log("Should be whatwhat:", strMult('what', 2));
// → Should be whatwhat: whatwhat

console.log("Should be kkkkk:", strMult('k', 5));
// → Should be kkkkk: kkkkk


// -----------------------------------------------------------------------------
// Partner Exercise #3.4
// ---------------------

// Complete the for loop such that the result is a combination of all the strings 
// in the array:

var array = ['apple', 'tangerine', 'grape', 'tangerine'];

var result = '';
for (var i = 0; i < array.length; i += 1) {
	result += array[i];
};

console.log('Result should be "appletangerinegrapetangerine":', result);
// → Result should be "appletangerinegrapetangerine": appletangerinegrapetangerine


// -----------------------------------------------------------------------------
// Partner Exercise #3.5
// ---------------------

// Complete the for loop such that the result is a combination of all the strings 
// in the array, separated by commas and a space, with an exclamation mark at the end:

var array = ['bop it', 'pull it', 'twist it'];

var result = '';
for (var i = 0; i < array.length - 1; i += 1) {
  result += array[i] + ', ';
}
var last = array.pop();
result += last + "!";

// The easiest way to do it:
// result += array.join(', ') + "!";

console.log('Result should be "bop it, pull it, twist it!":', result);
// → Result should be "bop it, pull it, twist it!": bop it, pull it, twist it!


// -----------------------------------------------------------------------------
// Partner Exercise #4.1
// ---------------------

// Complete the object so that the string renders correctly:

var greetingHtml = $.render('<p>Welcome, { username }</p>', { 
	username: 'xXxDarkxAssassinxXx' 
});

console.log('Result should be <p>Welcome, xXxDarkxAssassinxXx</p>', greetingHtml);
// → Result should be <p>Welcome, xXxDarkxAssassinxXx</p> 
// →                  <p>Welcome, xXxDarkxAssassinxXx</p>


// -----------------------------------------------------------------------------
// Partner Exercise #4.2
// ---------------------

// Complete the string so that the console.log outputs the correct value:

var giantButtonHtml = $.render('<a class="giant button { className }">Color is not { color }</a>', {
	color: 'pickle-green', 
	className: 'not-green' 
});

console.log('Result should be <a class="giant button not-green">Color is not pickle-green</a>', 
	giantButtonHtml);
// → Result should be <a class="giant button not-green">Color is not pickle-green</a> 
// →                  <a class="giant button not-green">Color is not pickle-green</a>


// -----------------------------------------------------------------------------
// Partner Exercise #4.3
// ---------------------

// Create the template string so that the console.log renders correctly:

var giantBoxTemplate = '<div id="{ id }" class="giant">{ content }</div>';

var giantBoxHtml = $.render(giantBoxTemplate, { id: 'loud', content: 'AHOY!' });
console.log('Result should be <div id="loud" class="giant">AHOY!</div>', giantBoxHtml)
// → Result should be <div id="loud" class="giant">AHOY!</div> 
// →                  <div id="loud" class="giant">AHOY!</div>


// -----------------------------------------------------------------------------
// Partner Exercise #4.4
// ---------------------

// Create the template script on the html page so that the console.log renders correctly. 

var tastyItemTemplate = $('#templates .yummy').html();
var tastyItemHtml = $.render(tastyItemTemplate, { 
	item: 'Creme Puff', 
	tastiness: 'Oh so good', 
	className: 'yummy' 
});
console.log('Result should be <div class="yummy box">The tasty thing is: Creme Puff. Its rating is: Oh so good</div>', tastyItemHtml);
// → Result should be <div class="yummy box">The tasty thing is: Creme Puff. Its rating is: Oh so good</div> 
// →                  <div class="yummy box">The tasty thing is: Creme Puff. Its rating is: Oh so good</div>


// -----------------------------------------------------------------------------
// Partner Exercise #5.1
// ---------------------

// Write an additional line of code to trigger only the 'turkey-run' event:

var poultryRace = $.observable({});

poultryRace.on('turkey-run', function () {
	console.log('gobble! gobble!');
});

poultryRace.on('chicken-waddle', function () {
	console.log('kachirp! kachirp!');
});

poultryRace.trigger('turkey-run');
// → gobble! gobble!


// -----------------------------------------------------------------------------
// Partner Exercise #5.2
// ---------------------

// Finish the line of code so that triggering 10-story-jump on stuntMan alerts 
// the message I beLIEVE!:

var stuntMan = $.observable({});

stuntMan.on('10-story-jump', function () {
	console.log('I beLIEVE!');
});

stuntMan.trigger('10-story-jump');
// → I beLIEVE!


// -----------------------------------------------------------------------------
// Partner Exercise #5.3
// ---------------------

// Write the missing line of code so that the following code makes it rain:

var makeItRain = {
	rainContent: 'dollar bills, yo'
};

console.log('Before:', makeItRain);
// → Before: Object {rainContent: "dollar bills, yo"}

$.observable(makeItRain);

console.log('After:', makeItRain);
// → After: Object {rainContent: "dollar bills, yo", on: function, off: function, 
//   one: function, trigger: function}


makeItRain.on('rain', function () {
	console.log("It's raining " + makeItRain.rainContent + '.');
});

makeItRain.trigger('rain');
// → It's raining dollar bills, yo.

