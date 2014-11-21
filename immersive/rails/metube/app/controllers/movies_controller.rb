class MoviesController < ApplicationController
	def show_gladiator
		@title = "Gladiator"
		@subtitle = "Matilda on the Decks!"
		@description = "Russel Crowe is a boss in this video"
		@video_id = "//www.youtube.com/embed/FI1ylg4GKv8"
	end

	def show_matilda
		@title = "Matilda"
		@subtitle = "Gladiator 'Are You Not Entertained' Scene"
		@description = "This movie is just great. Who agrees?"
		@video_id = "//www.youtube.com/embed/EVWOQwZENBg"
	end
end