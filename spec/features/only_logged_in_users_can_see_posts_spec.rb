RSpec.feature "Log in", type: :feature do
  scenario "guests cannot access the posts page" do
    visit('/posts')
    expect(page).to have_current_path '/welcome'
  end
end