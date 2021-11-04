require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Users can sign up for an account" do
    sign_up_test_user
    expect(page).to have_current_path("/newsfeed")
  end

  scenario "Users get validation errors for blank fields" do
    visit "/"
    click_button "Sign up"
    expect(page).to have_current_path("/sign-up")
    click_button "Sign up"
    expect(find_by_id('form-username')).to have_content "can't be blank"
    expect(find_by_id('form-password')).to have_content "can't be blank"
  end
end
