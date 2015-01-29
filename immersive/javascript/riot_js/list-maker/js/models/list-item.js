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
      items.splice(index, 1);
      this.trigger('destroy', index);
		};

		this.update = function (index, name, category) {
      var item = items[index];
      item.name = name;
      item.category = category;
			this.trigger('update', item, index);
		};

	};

	window.listItems = new ListItem();

})();