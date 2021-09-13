feature 'viewing bookmarks' do
  scenario 'user is able to see their bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'www.google.co.uk'
    expect(page).to have_content 'www.amazon.co.uk'
  end
end