class FollowshipsController < ApplicationController
    before_action :require_login
    def new
        @followships=Followship.new
    end
    def index
        @followships=Followship.all  
    end
    def create
    @user = User.find(params[:followship][:followed_id])
    current_user.follow(@user)
    redirect_to users_path

    end
    def destroy
        @user = Followship.find(params[:id]).followed
        current_user.unfollow(@user)
        redirect_to users_path
    end

 
end
#@current_user.followed_users.find_by(followee_id: @user.id).destroy