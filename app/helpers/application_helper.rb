module ApplicationHelper
  def left_logged_in?
    if logged_in?
      render 'layouts/left_logged_in'
    else
      render 'layouts/left_logged_out'
    end
  end

  def nav_logged_in?
    if logged_in?
      render 'layouts/nav_logged_in'
    else
      render 'layouts/nav_logged_out'
    end
  end
end
