class PostsController < ApplicationController
    def new
      @post = Post.new
    end
    
    def create
      @post = Post.new(post_params)
      @post.save
      flash[:notice]="作成しました"
      redirect_to("posts/index")
    end

    def index
      @posts = Post.all.order(created_at: :desc)
    end

    def show
      @post = Post.find(params[:id])
    end
end
