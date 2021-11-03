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

  scenario "logged out users can see the nav bar on the sign up page" do
    visit '/'
    click_button 'Sign up'
    expect(page).to have_content 'BOOKAROO'
    expect(page).to have_button 'Log in'
  end

  scenario "logged out users can see the nav bar on the log in page" do
    visit '/'
    click_button 'Log in'
    expect(page).to have_content 'BOOKAROO'
    expect(page).to have_button 'Sign up'
  end

end
