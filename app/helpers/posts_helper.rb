module PostsHelper
    def edit(post)
        if current_user.id == post.user.id 
            render 'posts/edit_post'

             end 
    end
end
