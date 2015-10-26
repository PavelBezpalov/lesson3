require 'rails_helper'

describe 'Creating posts' do
  it 'redirects to the post index page on success' do
    visit '/'
    click_link 'New Post'
    expect(page).to have_content('New Post')

    fill_in 'Title', with: 'First post'
    fill_in 'Body', with: 'Body of the first post'
    click_button 'Create Post'

    expect(page).to have_content('First post')
  end

  it 'displays an error when the post has no title' do
    visit '/'
    click_link 'New Post'
    expect(page).to have_content('New Post')

    fill_in 'Title', with: ''
    click_button 'Create Post'

    expect(page).to have_content('error')
  end

  it 'displays an error when the post has no body' do
    visit '/'
    click_link 'New Post'
    expect(page).to have_content('New Post')

    fill_in 'Title', with: 'First post'
    fill_in 'Body', with: ''
    click_button 'Create Post'

    expect(page).to have_content('error')
  end
end