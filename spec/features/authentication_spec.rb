require 'rails_helper'


  describe 'Valid users can login' do

  # Valid users can login.
  scenario 'User can login to site' do

    @user = User.create(:user_name => "Test User", :about => "Test", :password => "A", :password_confirmation => "A")
    visit '/'

    # click on login link to go to login page
    click_on "Log In"

    #filling out form for login
    fill_in 'User name', :with => "Test User"
    fill_in 'Password', :with => "A"

    #submitting form to login
    click_on "Login"

    #expect page to show user name and logout buttons
    expect(page).to have_content("Test User")
    expect(page).to have_content("Log Out")

  end


end
