// Grab box template html
var boxTemplate = $('#templates .box').html();

$('#new-box').on('submit', function (e) {
  // Prevent the form from submitting
  e.preventDefault();

  // Grab the color that the user wants to create a box with
  var color = $('#new-box .color').val();
  console.log('Creating a', color, 'box...');

  // Use boxTemplate, color, and $.render to generate new html
  var newBoxHtml = $.render(boxTemplate, { color: color });

  console.log('Generated new box html:', newBoxHtml);

  // Create the new box html element and make it draggable
  var newBox = $(newBoxHtml);
  newBox.draggable();

  // Add the new box element to the page
  $('#boxes').append(newBox);
});

// Make the current boxes draggable (thanks to jquery-ui)
$('.box').draggable();