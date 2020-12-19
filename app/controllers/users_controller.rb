class UsersController < ApplicationController
    before_action :require_login
    def index
        @user=User.all
    end
    def new
     @user=User.new
    end
    def create
        
    end
    def update
    end
    def show
    end
    def user_params
        params.require[:user].permit[:username, :fullname, :Photo,:cover_image]
    end
end
