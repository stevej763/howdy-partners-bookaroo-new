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
  visit "/"
  click_button "Sign Up"
  expect(page).to have_current_path("/sign-up")
  fill_in "user_username", with: @test_user
  fill_in "user_password", with: @test_password
  click_button "Create User"
end
