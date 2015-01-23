var videos = [
  { title: 'Get Krazy', youtubeId: 'GyR2HJ9B7aM' },
  { title: 'Sadness', youtubeId: 'sIeJSSjTG3k' }
];

var videoTemplate = $('#templates .video-list-item').html();

var renderVideoList = function () {
  for (var i = 0; i < videos.length; i += 1) {
    var video = $.render(videoTemplate, { title: videos[i].title });
    $('#video-list').append(video);
  };
};

renderVideoList();