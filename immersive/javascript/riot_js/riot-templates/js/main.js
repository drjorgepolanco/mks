var itemTemplate = $('#templates .item').html();
var newItemHtml = $.render(itemTemplate, { name: 'Dewberry', price: 0.15 });
$('#store').append(newItemHtml);


// -----------------------------------------------------------------------------
// Parnert Exercise #1
// -------------------

// Create an array of object literals.

var items = [
  { name: "blueberries", price: 1.15 },
  { name: "bananas", price: 0.26 },
  { name: "avocados", price: 0.89 }
];


// -----------------------------------------------------------------------------
// Parnert Exercise #2
// -------------------

// Write code to loop through this array. On each iteration:
// - Use your template to generate HTML for the current object.
// - Add this new HTML to the page.

for (var i = 0; i < items.length; i += 1) {
  var newItems = $.render(itemTemplate, { 
  	name: items[i].name, 
  	price: items[i].price 
  });
  $('#store').append(newItems);
};

