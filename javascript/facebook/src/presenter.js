// Removes all posts from browser
window.clearPosts = function(){
  $('.posts').empty();
}

// Display HTML for a single post
// ------------------------------
// Shows the status, the like button, a field to add comments, and a div to place comments
// It will have an id with the postId to help find it
window.displayPost = function(post){
  var postDiv = $("<hr>" + "<div class='post' id='post" + post.id + "'>" +
  "<h3>" + post.status + "</h3>" +
  "<button class='like-button'>like or unlike</button>" +
  "<p class='like-count'>Likes: " + post.likes + "</p>" + "<br>" +
  "<form><input type='text' class='commentField'>" +
  "<input class='submit-comment' type='submit' value='Add Comment'></form>" +
  "<div class='comments'></div>" + "</div>");

  // Handler for 'like' and 'add comment' buttons
  postDiv.children('button').click(function(){
    likePost(post.id)
  });

  postDiv.children('form').submit(function(e){
    e.preventDefault();
    var comment = $(e.currentTarget).children('.commentField').val();
    addComment(post.id, comment);
  });

  $('.posts').append(postDiv);
};

// Displays comments under a given post
window.displayComment = function(postId, comment){
  var post = $('#post' + postId);
  var commentHTML = "<hr><p class='comment'>" + comment.comments + "</p>"
  post.children('.comments').append(commentHTML);
}

// Call unload, on page loads
$(document).ready(function(){
  onLoad();
});


// Toggle button and Status Submission
$(document).ready(function(){
	$('.statusForm').submit(function(e) {
		e.preventDefault();var statusText = $('.statusForm .statusText').val();
		createPosts(statusText);
	});

	$('.toggleShortText').click(function(){
		toggleShortText();
	});
});