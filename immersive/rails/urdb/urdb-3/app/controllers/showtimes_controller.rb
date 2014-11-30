class ShowtimesController < ApplicationController
	def create
		@movie = Movie.find(params[:movie_id])
		@showtime = @movie.showtimes.new(showtime_params)

		if @showtime.save
			redirect_to @showtime.movie, notice: 'The Showtime was successfully created.'
		else
			redirect_to @showtime.movie, alert: 'The Showtime was not successfully created.'
		end
	end

	private

	def showtime_params
		params.require(:showtime).permit(:movie_id, :location, :time)
	end
end
