class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
        @comment = Comment.new(comment_params)
        @comment.user = current_user
        @comment.post_id = params[:id]

        @post = Post.find(params[:id])

        if @comment.save
            redirect_to @post
        else
            render 'new'
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:content)
    end
end
