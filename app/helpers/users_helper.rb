module UsersHelper
  def profile(u)
    render 'users/profile' unless u == current_user
  end

  def single_following(user)
    unless user == current_user

      if current_user.following?(user)
        render 'unfollow'
      else
        render 'single_follow'
      end
    end
  end

  def who_to_follow?(u)
    render 'users/who_to_follow' unless u == current_user
  end
end
