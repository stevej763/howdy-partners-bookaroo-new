RSpec.feature "Navigation Bar", type: :feature do
  scenario "logged in users can see the navigation bar" do
    sign_up_test_user
    Capybara.reset_session!
    log_in_user
    visit('/newsfeed')
    expect(page).to have_content 'Navigation Bar'
  end
end
