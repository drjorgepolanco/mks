var itemTemplate = $('#templates .item').html();
var newItemHtml = $.render(itemTemplate, { name: 'Dewberry', item: 0.15 });
$('#store').append(newItemHtml);