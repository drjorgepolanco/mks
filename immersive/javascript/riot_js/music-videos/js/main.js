var videos = [
  { title: "Get Krazy at Chuck E Cheese's", youtubeId: 'GyR2HJ9B7aM' },
  { title: "Spartans Kill Innocent Persians", youtubeId: 'sIeJSSjTG3k' }
];

var videoTemplate = $('#templates .video-list-item').html();

var renderVideoList = function () {
  for (var i = 0; i < videos.length; i += 1) {
    var video = $.render(videoTemplate, { 
    	title: videos[i].title, 
    	youtubeId: videos[i].youtubeId 
    });
    $('#video-list').append(video);
  };
};

renderVideoList();

$('#new-video').on('submit', function (e) {
	e.preventDefault();
	var title = $('.title').val();
	var youtubeId = $('.youtube_id').val();
  $('.title').val('');
  $('.youtube_id').val('');
	var newVideo = $.render(videoTemplate, { 
		title: title, 
		youtubeId: youtubeId
	});
	$('#video-list').append(newVideo);
});