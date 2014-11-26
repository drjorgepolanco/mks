# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users = [
	{first_name: "Jorge", 		last_name: "Polanco"},
	{first_name: "Massiel", 	last_name: "Gomez"},
	{first_name: "Jesus", 		last_name: "Monegro"},
	{first_name: "Vhania", 		last_name: "Batista"},
	{first_name: "Alexandra", last_name: "Rodriguez"}
]

users.each do |user|
	User.create(first_name: user[:first_name], last_name: user[:last_name])
	email_address = User.last.first_name.downcase + "@mail.com"
	User.last.update_attributes(email_address: email_address)
end

Video.destroy_all

videos = {
	"game_of_thrones" => {
		title: "Game of Thrones Trailer",
		youtube_id: "8ixEWrTLiZg",
		description: "Long trailer for upcoming HBO tv series."
	},
	"girls_fail_compilation" => {
		title: "The Ultimate Girls Fail Compilation 2012",
		youtube_id: "Gng3sPiJdzA",
		description: "FailArmy's best girl fails of 2012 put together in one fail compilation for your viewing pleasure."
	},
	"move_like_jagger" => {
		title: "Move like Jagger",
		youtube_id: "iEPTlhBmwRg",
		description: "Music video by Maroon 5 performing Moves Like Jagger."
	},
	"interstellar" => {
		title: "Interstellar",
		youtube_id: "0vxOhd4qlnA",
		description: "The latest trailer from Christopher Nolan's INTERSTELLAR."
	},
	"shelby_mustang" => {
		title: "Shelby Mustang GT500 Vs Train",
		youtube_id: "fpIpUqwaNcY",
		description: "The lads race from London's Wembley Stadium to Milan's San Siro, the home of Italian football giants AC and Inter. Jeremy takes a Shelby Mustang GT500 while James and Richard pin their hopes on the pan-European rail network. Jeremy explains the heritage of the Shelby name and its association with the 70mph speed limit on UK motorways."
	},
	"mixing_dna" => {
		title: "2014 July Breaking News Labs Mixing Human DNA Animal DNA 1 of 5 - Last days news prophecy",
		youtube_id: "dBDG3-bXcxQ",
		description: "2013 BREAKING NEWS WARNING TO HUMAN RACE human-animal genetic hybrid or chimera Human dog thousands of labs worldwide with animal human experiments this is sick and funded by the world Governments."
	},
	"family_guy" => {
		title: "Family Guy Funny Moments 1",
		youtube_id: "CJkE7XD-sfE",
		description: "I don't own the rights to these clips I posted them so other can enjoy."
	}
}

videos.each do |key, video|
	Video.create(video)
end