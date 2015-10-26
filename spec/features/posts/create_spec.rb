require 'rails_helper'

describe 'Creating posts' do
  it 'redirects to the post index page on success' do
    visit '/'
    click_link 'New Post'
    expect(page).to have_content('New Post')

    fill_in 'Title', with: 'First post'
    click_button 'Create Post'

    expect(page).to have_content('First post')
  end
end