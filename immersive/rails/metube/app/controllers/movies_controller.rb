class MoviesController < ApplicationController
	# def show_gladiator
	# 	@title = "Gladiator"
	# 	@subtitle = "Matilda on the Decks!"
	# 	@description = "Russel Crowe is a boss in this video"
	# 	@video_id = "//www.youtube.com/embed/FI1ylg4GKv8"
	# end

	def show_gladiator
    @movie = {
      title: 'Gladiator',
      subtitle: "Gladiator 'Are You Not Entertained' Scene",
      video_id: 'FI1ylg4GKv8',
      description: "Crowe shows everyone what's up."
    }
  end

  def show_matilda
    @movie = {
      title: 'Matilda',
      subtitle: "Big kid eating a brownie",
      video_id: 'EVWOQwZENBg',
      description: "Quite the random movie, but a classic for sure!"
    }
  end

  def show_batman
    @movie = {
      title: "Batman: Arkham Asylum",
      subtitle: "Batman rocks no matter what!",
      video_id: "IVIuIIVVbIs",
      description: "Omg I almost thought this was a real batman movie omg you are really awesome at this!!!﻿"
    }
  end
end