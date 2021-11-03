RSpec.feature "Log in", type: :feature do
  scenario "guests cannot access the newsfeed page" do
    visit('/newsfeed')
    expect(page).to have_current_path '/welcome'
  end
end
