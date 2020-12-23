class UsersController < ApplicationController
    #before_action :require_login
    def index
      @users = User.all
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
        redirect_to root_path
      end
    end

    def update
    end
    
    def show

      @user =User.find(params[:id])
      @posts = @user.posts.ordered_by_most_recent
    
    end
    private
    def user_params
        params.require(:user).permit(:Username, :Fullname, :Photo, :Coverimage)
    end
end
