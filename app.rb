require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/bookmark'

class Bookmark_manager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0

end