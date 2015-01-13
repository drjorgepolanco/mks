var posts = [
  {
  	status: 'This is a status',
  	likes: 5,
  	likedByMe: false,
  	id: 0,
  	comments: [{
  		comment: 'hello world',
  		id: 0
  	}]
  },
  {
  	status: 'This is another status',
  	likes: 8,
  	likedByMe: true,
  	id: 1,
  	comments: [{
  		comment: 'This has been a wonderful journey',
  		id: 0
  	},
  	{
  		comment: 'I love javascript',
  		id: 1
  	},
  	{
  		comment: 'This is really complicated though',
  		id: 2
  	}]
  }
];

var onLoad = function(){
  clearPosts();
  // posts.forEach(function(post){
  // 	displayPost(post);
  // 	// displayComment(posts.length - post - 1, post.comments)
  // 	console.log(posts.length - post);
  // });

  for (var i = 0; i < posts.length; i += 1) {
  	var post = posts[posts.length - 1];
  	displayPost(post);
  	for (var x = 0; x < post.comments.length; x += 1) {
  		var comment = post.comments[x];
  		console.log(post.id, comment);
  	};
  }
};
var createPost = function(post){};
var likePost = function(postId){};
var addComment = function(postId, comment){};
var shortText = false;
var toggleShortText = function(){};