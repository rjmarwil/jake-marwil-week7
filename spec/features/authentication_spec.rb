require 'rails_helper'


  describe 'Valid users can login' do

  # Valid users can login.
  scenario 'User can login to site' do

    @user = User.create(:user_name => "Test User", :password => "A", :password_digest => "A")
    visit '/'

    # click on login link to go to login page
    click_on "Log In"

    #filling out form for login
    fill_in 'user[user_name]', :with => "Test User"
    fill_in 'user[password]', :with => "A"

    #submitting form to login
    click_on "Login"

    #expect page to show user name and logout buttons
    expect(page).to have_content("Test User")
    expect(page).to have_content("Log Out")

  end


end
