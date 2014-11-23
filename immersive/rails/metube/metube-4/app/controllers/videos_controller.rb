class VideosController < ApplicationController
	def show
		id = params[:id]
		@video = Video.find_by(id)
	end

	def show_all
		@videos = Video.all
	end
end