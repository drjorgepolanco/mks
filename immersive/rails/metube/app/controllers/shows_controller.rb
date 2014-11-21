class ShowsController < ApplicationController
	def show_seinfeld
		@show = {
			title: "Seinfeld",
			description: "is an American television sitcom that originally ran for nine seasons on NBC from July 5, 1989, to May 14, 1998.",
			video_id: "PaPxSsK6ZQA"
		}
	end

	def show_friends
		@show = {
			title: "Friends",
			description: "is an American television sitcom created by David Crane and Marta Kauffman, which originally aired on NBC from September 22, 1994, to May 6, 2004.",
			video_id: "8mP5xOg7ijs"
		}
	end

	def show_senora_acero
		@show = {
			title: "Senora Acero",
			description: "is a American telenovela produced by Telemundo and distributed by Telemundo Television Studios and Argos Comunicación.",
			video_id: "YUXI-p1GluY"
		}
	end
end