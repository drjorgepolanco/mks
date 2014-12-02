class MoviesController < ApplicationController
  before_filter :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
    @showtimes = @movie.showtimes
    @showtime = @movie.showtimes.new
    @comments = @movie.comments
    @comment = @movie.comments.new
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @movie }
      else
        format.html { render action: 'new' }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url }
      format.json { head :no_content }
    end
  end

  private
    def movie_params
      params[:movie].permit(:title, :image, :trailer, :description)
    end

    def set_movie
      @movie = Movie.find_by_slug!(params[:id])
    end

    # This way you can always use this helper method instead of accessing the instancd
    # variable directly, both in the controller and in the view.
    # Benefit: It's lazy loaded, it doesn't hit the database unless we call this.
    # That means: if we add some caching we might be able to avoid the database find entirely
    
    # def movie
    #   @movie ||= Movie.find_by_slug!(params[:id])
    # end
    # helper_method :movie

    
end