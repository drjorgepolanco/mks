class MoviesController < ApplicationController
	before_action :set_movies, only: [:show, :edit, :update, :destroy]

	def index
		@movies = Movie.all
	end

	def show
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to @movie
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @movie.update(movie_params)
			redirect_to @movie
		else
			render 'edit'
		end
	end

	def destroy
		@movie.destroy
		redirect_to root_path
	end

	private

	def set_movies
		@movie = Movie.find(params[:id])
	end

	def movie_params
		params.require(:movie).permit(:title, :image, :trailer, :description)
	end
end
