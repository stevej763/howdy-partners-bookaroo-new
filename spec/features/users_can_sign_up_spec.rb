require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Users can sign up for an account" do
    sign_up_test_user
    expect(page).to have_current_path("/posts")
  end
end
