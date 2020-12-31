class FollowshipsController < ApplicationController
  def new
    @followships = Followship.new
  end

  def index
    @followships = Followship.all
  end

  def create
    @user = User.find(params[:followship][:followed_id])
    current_user.follow(@user)
    redirect_to user_path(@user.id)
  end

  def destroy
    @user = Followship.find(params[:id]).followed
    current_user.unfollow(@user)
    redirect_to user_path(@user.id)
  end
end
