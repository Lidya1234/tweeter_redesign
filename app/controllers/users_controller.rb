class UsersController < ApplicationController
    #before_action :require_login
    def index
        @user=User.all
    end
    def new
     @user = User.new
    end
    def create
      @user =User.new(user_params)
      if @user.save  
        redirect_to new_user_path
    else
        render new
    end
    end

    def update
    end
    
    def show
    end
    def user_params
        params.require[:user].permit[:username, :fullname, :Photo,:cover_image]
    end
end
