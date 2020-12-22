class SessionsController < ApplicationController
    def new; end
   def index
  end
    def create
      # user=User.find_by(username: user_params[:username])
      @user = User.find_by(Username: params[:session][:Username])
      if @user
        session[:user_id] = @user.id
        flash[:notice] = "#{@user.Username} succesfully logged in"
        redirect_to new_post_path
      else
        flash.now.alert = 'Login failed'
        render :new
      end
    end
  
    def destroy
      session[:user_id] = nil
      flash[:notice] = 'You have successfully logged out.'
      redirect_to new_user_path
    end
  end
