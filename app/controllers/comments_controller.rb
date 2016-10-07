class CommentsController < InheritedResources::Base
	
	def create
		@comment = Comment.new(comment_params)

		if @comment.save
			flash[:notice] = "Comment was succesfully created"
		else
			flash[:error] = "You must fill all comment fields."
		end
		redirect_to @comment.post
	end

  private

    def comment_params
      params.require(:comment).permit(:name, :body, :post_id)
    end
end

