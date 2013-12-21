class BooksController < ApplicationController

	def index
		@books = Media.find(:all, :conditions => "category_id = 1")
	end

	def show
		@book = Media.find(params[:id])
	end
end
