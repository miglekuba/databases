require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
  "Bookmarks"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end
  
  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end
  
  post '/bookmarks' do
    # url = params['url']
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    # refactored code looks like this:
    Bookmark.create(url: params[:url])

    redirect '/bookmarks'
  end
  

  run! if app_file == $0
end
