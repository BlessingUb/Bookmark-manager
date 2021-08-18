
require 'pg'

def setup_test_database 
  con = PG.connect :dbname => 'bookmark_manager_test'

  con.exec "TRUNCATE TABLE bookmarks"
  Bookmark.add('Makers', 'http://www.makersacademy.com')
  Bookmark.add('Software', 'http://www.destroyallsoftware.com')
  Bookmark.add('Google', 'http://www.google.com')
end 



