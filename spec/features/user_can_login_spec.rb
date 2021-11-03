require 'rails_helper'

RSpec.feature "Log in", type: :feature do
  scenario "Users can log into their account" do
    sign_up_test_user
    Capybara.reset_session!
    visit('/')
    click_button 'Log in'
    expect(page).to have_current_path("/log-in")
    fill_in "username", with: @test_user
    fill_in "password", with: @test_password
    click_button "Log in"
    expect(page).to have_current_path("/newsfeed")
  end

  scenario "User gets the password wrong" do
    visit('/')
    click_button 'Log in'
    expect(page).to have_current_path("/log-in")
    fill_in "username", with: "wrong"
    fill_in "password", with: "wrong"
    click_button "Log in"
    expect(page).to have_current_path("/log-in")
  end


end
