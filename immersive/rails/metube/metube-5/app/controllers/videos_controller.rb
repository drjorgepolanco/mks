class VideosController < ApplicationController
	
	def show_all
		@videos = Video.all
	end

	def show
		@video = video.find(params[:id])
	end

	def new 
		@video = Video.new
	end
end