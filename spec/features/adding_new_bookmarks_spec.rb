feature 'adding bookmarks' do
  scenario 'user can add a bookmark' do
    visit('/bookmarks')
    click_link 'Add a bookmark'
    fill_in :new_bookmark, with: 'http://www.reddit.com'
    click_button 'Add'
    expect(page).to have_content 'http://www.reddit.com'
  end
end
