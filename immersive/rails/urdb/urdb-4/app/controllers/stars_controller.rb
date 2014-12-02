class StarsController < ApplicationController
	def show
		@star = Star.find_by_slug!(params[:id])
	end

	def index
		@stars = Star.all
	end
end
