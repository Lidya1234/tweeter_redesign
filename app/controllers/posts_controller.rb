class PostsController < ApplicationController
    def index
        @posts = Post.new
        tweets
    end
    def new
  
    end
    def create
    @posts = current_user.posts.new(post_params)
        
    if @posts.save
        redirect_to posts_path
    else
        render 'new'
    end
    end
    def show
        
    end
    def destroy
    end

    def post_params
        params.require(:post).permit(:text)
    end
    def tweets
       @tweets ||= Post.all.ordered_by_most_recent.includes(:user)
    end
end
