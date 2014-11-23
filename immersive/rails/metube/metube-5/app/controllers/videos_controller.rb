class VideosController < ApplicationController
	def show
		@video = video.find(params[:id])
	end

	def show_all
		@videos = Video.all
	end
end