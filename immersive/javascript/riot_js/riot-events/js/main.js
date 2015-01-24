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


// -----------------------------------------------------------------------------
// Partner Exercise #1.3
// ---------------------

// Add two event listeners on fireEater that listen for a 'pose' event and a 'choke' 
// event. When the fire eater poses, console log an applause. When the fire eater 
// chokes, console log an audience gasp.

var fireEater = {
	state: 'arrogant',
	eatFire: function () {
		if (this.state === 'choking') {
			this.trigger('choke');
		}
		var fate = parseInt(Math.random() * 5, 10);
		if (fate === 0) {
			this.trigger('choke');
			this.state = 'choking';
		}
		else {
			this.trigger('pose');
		} 
	}
};

$.observable(fireEater);

fireEater.on('pose', function () {
	console.log("Applauses!!!");
});
fireEater.on('choke', function () {
	console.log("Audience gasps!!");
});

for (var i = 0; i < 10; i += 1) {
	fireEater.eatFire();
};


// -----------------------------------------------------------------------------
// Partner Exercise #2
// -------------------

// Trigger a price change event so that the following code works:

var stock = $.observable({
  price: 99,
  update: function () {
    this.price += parseInt(Math.random() * 3, 10) - 1;
    this.trigger('price-change', this.price);
  }
});

stock.on('price-change', function (price) {
  if (price > 100) {
    console.log('Too expensive:', price);
  }
  else if (price < 100) {
    console.log('Too cheap:', price);
  }
  else {
    console.log('Just right!', price);
  }
});

setInterval(function () {
  stock.update();
}, 1000);
