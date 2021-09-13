require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader 
  end 

  get '/' do 
    "Bookmark Manager"
  end 


  run! if app_file == $0

end 