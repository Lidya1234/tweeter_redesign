class PostsController < ApplicationController
  before_action :require_login, only: %i[index show create update edit]
  def index
    @posts = Post.new
    tweets
  end

  def new; end

  def create
    @posts = current_user.posts.new(post_params)

    if @posts.save
      redirect_to user_path(@posts.user_id), notice: 'Post was successfully created.'
    else
      flash[:notice] = 'Post field is blank.'
      redirect_to user_path(@posts.user_id)
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(text: params[:post][:text])
    redirect_to @post, notice: 'Post was successfully edited.'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    all_posts
  end

  def destroy; end

  def tweets
    @tweets ||= Post.all.ordered_by_most_recent.includes(:user)
  end

  def all_posts
    @all_posts ||= Post.all.ordered_by_most_recent
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end
