require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Users can sign up for an account" do
    sign_up_test_user
    expect(page).to have_current_path("/newsfeed")
  end

  scenario "New users can fill in the sign up form" do
    visit "/"
    click_button "Sign up"
    expect(page).to have_current_path("/sign-up")
    expect(page).to have_content("Profile picture")
  end

end
