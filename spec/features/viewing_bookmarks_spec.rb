feature 'viewing bookmarks' do
  scenario 'user is able to see their bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'http://www.msn.com'
    expect(page).to have_content 'http://www.google.com'
  end
end