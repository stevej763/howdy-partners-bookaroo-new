require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Users can sign up for an account" do
    visit "/welcome"
    click_button "Sign Up"
    expect(page).to have_current_path("/sign-up")
    fill_in "user_username", with: "feature_test_user"
    fill_in "user_password", with: "feature_test_password"
    click_button "Create User"
    expect(page).to have_current_path("/posts")
  end
end
