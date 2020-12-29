class UsersController < ApplicationController
  before_action :require_login, only: %i[index show]
  def index
    @user = User.all
    @user = @user.includes(:posts)
    @who_to_follow = User.who_to_follow(current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      puts @user.errors.full_messages
      flash[:notice] = 'Signup failed'
      redirect_to new_user_path
    end
  end

  def update; end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.ordered_by_most_recent
  end

  private

  def user_params
    params.require(:user).permit(:Username, :Fullname, :Photo, :Coverimage)
  end
end
