require 'rails_helper'

feature "Viewing posts" do
  fixtures :posts
  scenario "Can view an ordered list of posts with posting datetime" do
    sign_up_test_user
    visit "/newsfeed"
    expect(find_by_id(0)).to have_content("This is post 5")
    expect(find_by_id(0)).to have_content("12:05 - 05 May 2021")
    expect(find_by_id(1)).to have_content("This is post 4")
    expect(find_by_id(1)).to have_content("12:04 - 04 Apr 2021")
    expect(find_by_id(2)).to have_content("This is post 3")
    expect(find_by_id(2)).to have_content("12:03 - 03 Mar 2021")
    expect(find_by_id(3)).to have_content("This is post 2")
    expect(find_by_id(3)).to have_content("12:02 - 02 Feb 2021")
    expect(find_by_id(4)).to have_content("This is post 1")
    expect(find_by_id(4)).to have_content("12:01 - 01 Jan 2021")
  end
end
