require 'rails_helper'

feature 'create new tracking url' do
  scenario 'create a new tracking url with valid data' do
    visit('/')
    click_on('Add tracking url')

    fill_in('Title', with: 'Google')
    fill_in('Url', with: 'http://www.google.com')
    choose('Public')

    click_on('Create tracking url')
    expect(page).to have_content('Tracking url has been create')
  end
end
