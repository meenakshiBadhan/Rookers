class MoviesController < ApplicationController
	
	def index
		@movies = Media.find(:all, :conditions => "category_id = 3")
	end

	def show
		@movie = Media.find(params[:id])
	end

end
