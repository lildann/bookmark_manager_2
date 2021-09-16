require 'pg'

class Bookmark
  attr_reader :id, :title, :url

def initialize(id:, title:, url:)
  @id = id
  @title = title
  @url = url
end


  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec('SELECT * FROM bookmarks')
    result = result.map do |bookmark| 
       Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url']) 
    end
  end

  def self.create(title:, url:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec_params(
      #SQL query template
      "INSERT INTO bookmarks (title, url) VALUES ($1, $2) RETURNING id, title, url;", [title, url]) # params are the second argument to exec params, $1 $2 are placeholders
    Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end
end
