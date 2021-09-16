feature 'adding bookmarks' do
  scenario 'user can add a bookmark' do
    visit('/bookmarks')
    click_link 'Add a bookmark'
    fill_in 'url', with: 'http://www.reddit.com'
    fill_in 'title', with: 'Reddit'
    click_button 'Add' # make web_helper for this setup?

    expect(page).to have_link 'Reddit', href: 'http://www.reddit.com'
  end
end
