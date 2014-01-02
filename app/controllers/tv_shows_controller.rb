class TvShowsController < ApplicationController
	
	def index
		@tv_shows = Media.find(:all, :conditions => "category_id = 2")
	end

	def show
		@tv_show = Media.find(params[:id])
	end

end
