RSpec.feature "Log out", type: :feature do

  fixtures :users
  scenario "logged in users can log out from newsfeed page" do
    log_in_user
    visit('/newsfeed')
    click_button "Log out"
    expect(page).to have_current_path '/'
    expect(page).to have_button 'Log in'
    expect(page).to have_button 'Sign up'
  end
end
