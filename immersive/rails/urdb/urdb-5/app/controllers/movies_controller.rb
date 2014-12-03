class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]

	def index
		@movies = Movie.all
	end

	def show
		@showtimes = @movie.showtimes
		@showtime = @movie.showtimes.build
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		respond_to do |format|
			if @movie.save
				format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
			else
				format.html { render action: 'new' }
			end
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @movie.update(movie_params)
				format.html { redirect_to @movie, notice: 'The movie was successfully updated.' }
			else
				format.html { render action: 'edit' }
			end
		end
	end

	def destroy
		@movie.destroy
		respond_to do |format|
			format.html { redirect_to movies_path }
		end
	end

	private

		def set_movie
			@movie = Movie.find(params[:id])
		end

		def movie_params
			params.require(:movie).permit(:title, :poster_url, :trailer_url, :description)
		end
end