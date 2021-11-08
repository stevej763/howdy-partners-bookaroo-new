require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
# RSpec.describe UsersHelper, type: :helper do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

def sign_up_test_user
  @test_user = "feature_test_user"
  @test_password = "feature_test_user"
  @test_profile_picture = "https://images.unsplash.com/photo-1598974357801-cbca100e65d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
  visit "/"
  click_button "Sign up"
  expect(page).to have_current_path("/sign-up")
  fill_in "user_username", with: @test_user
  fill_in "user_password", with: @test_password
  fill_in "user_profile_picture", with: @test_profile_picture
  # TO CHECK: why do we write user_username at line 24, but just username at line 35
  click_button "Sign up"
end

def log_in_user
  visit('/')
  click_button 'Log in'
  expect(page).to have_current_path("/log-in")
  fill_in "username", with: "user1"
  fill_in "password", with: "password1"
  click_button "Log in"
end
