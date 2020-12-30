module PostsHelper
  def edit(post)
    render 'posts/edit_post' if current_user.id == post.user.id
  end
end
