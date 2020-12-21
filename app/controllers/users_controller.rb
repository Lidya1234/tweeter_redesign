class UsersController < ApplicationController
    #before_action :require_login
    def index
        @user=User.all
    end
    def new
     @user = User.new
    end
    def create
      @user = User.new(user_params)
      if @user.save  
        redirect_to new_user_path
      else
        render root_path
      end
    end

    def update
    end
    
    def show
    end
    private
    def user_params
        params.require(:user).permit(:Username, :Fullname, {Photo: []}, {Coverimage: []})
        #params.require(:user).permit(:email, :first_name, :last_name, {Photo: []}, )
        #params.require(:user).permit(:email, :first_name, :last_name, {avatars: []})


    end
end
