require 'spec_helper'

feature 'Creating Links' do
  scenario 'I can add new links to the database' do
    visit '/links/new'
    fill_in :title, with: 'Google'
    fill_in :url, with: 'www.google.com'
    click_button 'Submit'
    expect(page).to have_content 'www.google.com'

    within 'ul#links' do
      expect(page).to have_content 'Google'
    end
  end
end
