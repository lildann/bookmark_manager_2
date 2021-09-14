require 'pg'

class Bookmark
  def self.all
    result = PG.connect(dbname: 'bookmark_manager').exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end
end
