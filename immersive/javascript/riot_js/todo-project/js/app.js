/* The Presenter */

(function () { 'user strict';

	window.todo = new Todo();

	// HTML template for a single todo item
	var todoTemplate = $('#templates .todo-item').html(), $root = $('#todo-list');


	/* Listen to user events */

	// 2. When the form submits, add a new todo via the model



	// 3. When the user clicks the 'x' button, remove the todo via the model
	$root.on('click', '.destroy', function (e) {
		// TODO
	});

	
	/* Listen to model events */
	
	// 1. When a new todo is added, generate new html to show it on the page
	todo.on('add', function (newTodo) {
		console.log('New todo!', newTodo);
		// TODO
	});

	todo.on('remove', function (todo) {
    var idFilter = '[data-id=' + todo.id + ']';
    $('#todo-list .todo-item').filter(idFilter).remove();
	});

})();