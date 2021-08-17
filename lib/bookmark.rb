<<<<<<< HEAD
require 'pg'

=======
# in lib/bookmark.rb
require 'pg'
>>>>>>> 6069bf6 (new commit)
class Bookmark

  def self.all
<<<<<<< HEAD
    conn = PG.connect(dbname: 'bookmark_manager')
    result = conn.exec( 'SELECT * FROM bookmarks')
    result.map { |bookmarks|  bookmarks['url'] }
  end
end
=======
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end 
>>>>>>> 6069bf6 (new commit)

# puts Bookmark.new.all
puts Bookmark.all