class VideosController < ApplicationController
	def show
		@video = Video.find_by_id(params[:id])
	end

	def show_all
		@videos = Video.all
	end
end