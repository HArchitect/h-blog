class PostsController < ApplicationController
  before_action :find_post, only: [:show, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.ip = request.remote_ip
    @post.removable = true

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show  
  end

  def destroy
    if (@post.removable)
      @post.destroy
    end
    redirect_to root_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
