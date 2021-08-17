require 'pg'

class Bookmark

  def self.all
    conn = PG.connect(dbname: 'bookmark_manager')
    result = conn.exec( 'SELECT * FROM bookmarks')
    result.map { |bookmarks|  bookmarks['url'] }
  end
end

# puts Bookmark.new.all
puts Bookmark.all