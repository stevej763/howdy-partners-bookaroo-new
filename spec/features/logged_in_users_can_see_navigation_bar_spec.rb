RSpec.feature "Navigation Bar", type: :feature do

  scenario "logged in users can see the navigation bar on the newsfeed page" do
    sign_up_test_user
    Capybara.reset_session!
    log_in_user
    expect(page).to have_content 'BOOKAROO'
    expect(page).to have_button 'Log out'
  end

  scenario "logged in users can see the nav bar on the new post page" do
    sign_up_test_user
    Capybara.reset_session!
    log_in_user
    click_link 'New post'
    expect(page).to have_content 'BOOKAROO'
    expect(page).to have_button 'Log out'
  end

end
