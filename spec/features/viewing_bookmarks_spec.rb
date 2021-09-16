require 'pg'

feature 'viewing bookmarks' do
  scenario 'user is able to see their bookmarks' do

    Bookmark.create('Makers', 'http://www.makersacademy.com')
    Bookmark.create('Destroy All Software', 'http://www.destroyallsoftware.com')
    Bookmark.create('Google', 'http://www.google.com')
 
    visit('/bookmarks')
    
    expect(page).to have_link 'Makers', href: 'http://www.makersacademy.com'
    expect(page).to have_link 'Destroy All Software', href: 'http://www.destroyallsoftware.com'
    expect(page).to have_link 'Google', href: 'http://www.google.com'
  end
end
