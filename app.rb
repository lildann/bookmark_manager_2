require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/base'

class BookmarkManager < Sinatra::base
  configure :development do 
    register Sinatra::reloader 
  end 

  get '/' do 
    "Hello World"
  end 


  run! if app_file == $0