nick_dog = {
	:maple => {
		name: "Maple",
		age: 4,
		breed: "pitbull",
		favorite_game: "tug-o-war"
	},
	:atlas => {
		name: "Atlas",
		age: 3,
		breed: "boxer",
		favorite_game: "fetch"
	},
	love: "swimming in the lake"
}

puts nick_dog[:love]
#=> swimming in the lake

puts nick_dog[:atlas][:breed]
#=> boxer