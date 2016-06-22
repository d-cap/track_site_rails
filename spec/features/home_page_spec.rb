require 'rails_helper'

RSpec.feature 'HomePages', type: :feature do
  scenario 'home page' do
    visit('/')
    expect(page).to have_content('Home')
  end
end
