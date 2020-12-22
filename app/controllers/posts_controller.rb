class PostsController < ApplicationController
    def index
    end
    def new
    @opinion = Post.new
    end
    def create
    @posts = current_user.posts.new(post_params)
        
    if @posts.save
        redirect_to new_user_path
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
end
