class PostsController < ApplicationController 
	def index 
		@search = Post.ransack(params[:q]) 
		@posts = @search.result(distinct: true) 
	end

	def show
		@post = Post.all
	end
end