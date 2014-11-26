class AlumnisController < ApplicationController
	def index
		@alumnis = Alumni.all
	end

	def show
		@alumni = Alumni.find(params[:id])
	end
end