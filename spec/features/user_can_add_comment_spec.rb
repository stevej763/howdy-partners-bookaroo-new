require 'rails_helper'

feature "Adding comments" do
  fixtures :posts
  scenario "user can add a comment to a post" do
    sign_up_test_user
    visit "/newsfeed"
    fill_in "comment-post-id-1", with: "This is a comment!"
    click_button "comment-button-id-1"
    expect(page).to have_current_path('/newsfeed')
    expect(page).to have_content('This is a comment!')
  end
end
