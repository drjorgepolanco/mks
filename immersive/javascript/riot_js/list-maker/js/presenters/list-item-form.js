(function () {

  var $view = $('form.new-list-item'), 
              invalidText = '(!) You must include both an item name and an item category.';


// HTML interactions

  $view.on('submit', function (e) {

    e.preventDefault();

    // Grab user input data
    newListItem = {
      name: $('.name', $view).val(),
      category: $('.category', $view).val()
    };

    // Validation: both fields neccessary
    if (newListItem.name === '' || newListItem.category === '') {
      $('.error').show().text(invalidText);
      return;
    }
    else {
      $('.error').hide();
    }
    
    // Creates the new item using the model
    listItems.create(newListItem);

    // Clear out new items input field
    $('input[type="text"]', $view).val('');
  
  });

})();