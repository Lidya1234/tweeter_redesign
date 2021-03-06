module UsersHelper
  def profile(user)
    render 'users/profile' unless user == current_user
  end

  def single_following(user)
    return if user == current_user

    if current_user.following?(user)
      render 'unfollow'
    else
      render 'single_follow'
    end
  end

  def who_to_follow?(user)
    render 'users/who_to_follow', { u: user } unless user == current_user
  end

  def followers?(user)
    return if user == current_user

    if current_user.following?(user)
      render 'users/unfollow'
    else
      render 'users/follow'
    end
  end
end
