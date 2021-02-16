module PostsHelper
  def edit(post)
    render 'posts/edit_post', { post: post } if current_user.id == post.user.id
  end
end
