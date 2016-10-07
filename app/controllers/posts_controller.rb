class PostsController < ApplicationController 
	def index 
		@search = Post.ransack(params[:q]) 
		@posts = @search.result(distinct: true) 
	end

	def show
		@post = Post.find(params[:id])
		@user = AdminUser.all
		@comment = Comment.new(post: @post)
	end
end