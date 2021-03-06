class PostsController < ApplicationController
    before_action :authenticate_user!, :except => [:show, :index]

    def index
        @posts = Post.all
    end
    def create
        @post = Post.new(post_params)
        @post.user = current_user

        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end
    def new
        @post = Post.new
    end
    def edit
        @post = Post.find(params[:id])
    end
    def show
        @post = Post.find(params[:id])
        @comment = Comment.new
    end
    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
    end
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

    #What if this was created in healpers and then imported here?
    private
    def post_params
        params.require(:post).permit(:title, :content, :picture, :published_date)
    end
end
