class VideosController < ApplicationController
	before_action :set_videos, only: [:show, :edit, :update, :destroy]

	def index
		@videos = Video.all
	end

	def show
	end

	def new
		@video = Video.new
	end

	def create
		@video = Video.new(video_params)
		if @video.save
			redirect_to @video
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @video.update(video_params)
			redirect_to @video
		else
			render 'edit'
		end
	end

	def destroy
		@video.destroy
		redirect_to root_path
	end

	private

	def set_videos
		@video = Video.find(params[:id])
	end

	def video_params
		params.require(:video).permit(:title, :image, :trailer, :description)
	end
end
