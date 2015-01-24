function capitalize(string) {
  return string.charAt(0).toUpperCase() + string.substr(1).toLowerCase();
};

var videos = [
  { title: "Iron Maiden Wasted Years Official Music Video",           youtubeId: 'GnqkDbrIfps', genre: 'metal'        },
  { title: "Blake Shelton - 'Lonely Tonight' (Ft. Ashley Monroe)",    youtubeId: 'G91KZ56mNbw', genre: 'country'      },
  { title: "SODA STEREO - De musica ligera en vivo",                  youtubeId: 'PBozofUgEQ0', genre: 'spanish rock' },
  { title: "B. B. King - The Thrill Is Gone (Live at Montreux 1993)", youtubeId: '4fk2prKnYnI', genre: 'blues'        },
  { title: "Michel Camilo - New York Band - 'CARIBE' (Solo Intro)",   youtubeId: 'FC9MKexsNnU', genre: 'jazz'         },
  { title: "Enanitos Verdes - Lamento Boliviano (video oficial)",     youtubeId: 'khbDnLqe_Wk', genre: 'spanish rock' },
  { title: "Chick Corea Elektric Band Live at North Sea Jazz 2003",   youtubeId: 'SL34LYIWQ6M', genre: 'jazz'         },
  { title: "Art Tatum Solo Masterpieces - Volume 1",                  youtubeId: '1SnJSHfMAxQ', genre: 'jazz'         },
  { title: "Metallica - Nothing Else Matters [Official Music Video]", youtubeId: 'tAGnKpE4NCI', genre: 'metal'        }
];

var videoTemplate = $('#templates .video-list-item').html();

var renderVideoList = function () {
  for (var i = 0; i < videos.length; i += 1) {
    var video = $.render(videoTemplate, { 
      title: videos[i].title,
      genre: videos[i].genre, 
      youtubeId: videos[i].youtubeId 
    });
    $('#video-list').append(video);
  };
};
renderVideoList();

$('#new-video').on('submit', function (e) {
  e.preventDefault();
  var title = $('.title').val();
  var genre = $('.genre').val();
  var youtubeId = $('.youtube_id').val();
  $('.title').val('');
  $('.genre').val('');
  $('.youtube_id').val('');
  videos.push({ title: title, genre: genre, youtubeId: youtubeId});
  renderGenreStats();
  var newVideo = $.render(videoTemplate, { 
    title: title,
    genre: genre, 
    youtubeId: youtubeId
	});
	$('#video-list').append(newVideo);
});

var renderGenreStats = function () {
  var stats = {};
  for (var i = 0; i < videos.length; i += 1) {
    var genre = videos[i].genre;
    if (stats[genre] === undefined)
      stats[genre] = 0;
    stats[genre] += 1;
  };
  stats;
  var genreStatTemplate = $('#templates .genre-stat').html();
  $('#genre-stats').empty();
  for (var genre in stats) {
    var genreCount = stats[genre];
    var genreStat = $.render(genreStatTemplate, { 
      genre: capitalize(genre), 
      genreCount: genreCount 
    });
    $('#genre-stats').append(genreStat);
  };
};
renderGenreStats();