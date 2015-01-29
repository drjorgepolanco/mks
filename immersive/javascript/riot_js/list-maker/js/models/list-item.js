(function () {

	var ListItem = function () {

		// The 'private' data
		var items = [];

		$.observable(this);

		this.create = function (listItem) {
      items.push(listItem);
      this.trigger('create', listItem);
		};

		this.destroy = function (index) {

		};

		this.update = function (index, name, priority) {
			this.trigger('update', items[index], index);
		};

	};

	window.listItems = new ListItem();

})();