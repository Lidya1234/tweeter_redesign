require 'rails_helper'

feature 'follow feature', type: :feature do
  before do
    create_user('Lidya', 'lidu')
    @follower = User.first
    @followed = User.last
  end

  it 'a user can follow another user' do
    expect(page).not_to have_content('Unfollow')
  end

  scenario 'a user can unfollow another user he/she follows' do
    expect(page).not_to have_content('Follow')
  end

  def create_user(_username, _fullname)
    visit new_user_path

    fill_in 'user_Username', with: 'lidya'
    fill_in 'user_Fullname', with: 'lidu'

    attach_file('user_Photo', File.absolute_path('./spec/support/assets/test_photo.jpg'))
    attach_file('user_Coverimage', File.absolute_path('./spec/support/assets/test_cover_image.jpg'))

    click_button 'Sign up'
  end
end
