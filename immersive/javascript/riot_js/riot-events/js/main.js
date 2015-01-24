// ============
// $.observable
// ============

var buzzer = {
	press: function () {
		this.trigger('buzz');
	}
};

$.observable(buzzer);

buzzer.on('buzz', function () {
	console.log('The buzzer went off!');
});

buzzer.press();
buzzer.press();


// =====================
// Other Riot.js Methods
// =====================

// Riot.js also adds the 'off' and 'one' methods via '$.observable'. 'one' listens 
// for an event only once, while 'off' turns off all callbacks for a specific event.


// -----------------------------------------------------------------------------
// Partner Exercise #1.1
// ---------------------

// Write a single line of code so that the following runs correctly:

var pizzaCook = {
	ego: 0,
	spinDough: function () {
		this.ego += 1;
		if (this.ego > 10) {
			this.trigger('confidence');
		}
	}
};

$.observable(pizzaCook);

pizzaCook.on('confidence', function () {
	console.log('I HAVE SOLVED WORLD HUNGER');
});

for (var i = 0; i < 11; i += 1) {
	pizzaCook.spinDough();
};


// -----------------------------------------------------------------------------
// Partner Exercise #1.2
// ---------------------

// Write an additional two lines of code to trigger a snow storm and a tornado 
// weather change.

var weather = $.observable({});

weather.on('snow-storm', function () {
	console.log('Bring your coats');
});

weather.on('tornado', function () {
	console.log('Everybahdy panic!');
});

weather.trigger('snow-storm');
weather.trigger('tornado');
























































