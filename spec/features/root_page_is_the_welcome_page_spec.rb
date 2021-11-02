require 'rails_helper'

RSpec.feature "Homepage", type: :feature do
  scenario "users are sent to the welcome page" do
    visit "/"
    expect(page).to have_content("Sessions#welcome")
  end
end
