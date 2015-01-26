$(document).ready(function () {
  var itemTemplate = $('#templates .item').html();
  $('#store-form').on('submit', function (e) {
    e.preventDefault();
    var name         = $('.name').val();
    var price        = $('.price').val();
    var newItem      = $.render(itemTemplate, { 
      name:  name, 
      price: price 
    });
    console.log("The new item is " + name + " with price of $" + price);
    $('#store').append(newItem);
  });
});