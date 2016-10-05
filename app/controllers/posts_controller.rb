class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
		@category = Category.all
	end

	def create
		@post = Post.new(user_params)
		if @post.save
			redirect_to posts_path, notice: "Your post has been SAVED"
		else
			render 'new'
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update_attributes(user_params)
			redirect_to post_path, notice: "Your post has been UPDATED"
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, notice: "Your post has been DELETED"
	end

	private

	def user_params
    	params.require(:post).permit(:title, :body, :category_id)
	end
end
