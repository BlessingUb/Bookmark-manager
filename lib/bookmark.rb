# in lib/bookmark.rb
require 'pg'

class Bookmark

  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    
    result = connection.exec('SELECT * FROM bookmarks')
    result.map do |bookmark| bookmark['url']
    end
  end

  def self.add(title,bookmark)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec "INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{bookmark}')"
    
  end
end
