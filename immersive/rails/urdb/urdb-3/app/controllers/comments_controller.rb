class CommentsController < ApplicationController
	def create
		@movie = Movie.find(params[:movie_id])
		@comment = @movie.comments.new(comment_params)

		if @comment.save
			redirect_to @comment.movie, notice: 'The comment was successfully created.'
		else
			redirect_to @comment.movie, alert: 'The comment was not successfully created.'
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:movie_id, :message)
	end
end