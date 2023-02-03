class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :create]
  def index
    @posts=current_user.posts.all
    @post=current_user.posts.new
  end

  def show
    @post=Post.find(params[:id])
    @comments=@post.comments
    @comment=current_user.comments.new
  end
  def create
    @post=current_user.posts.new(post_params)
    @post.user_id=current_user.id
    if @post.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end
  private
  def post_params
    params.require(:post).permit(:content)
  end
end
