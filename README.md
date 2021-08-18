User Stories for Bookmark Manager
User story 1
As a busy person
I want to see a list of bookmarks of website i visit often
So that i can easily access the websites







SETUP DATABASE FROM SCRATCH
1.Connect to psql
2.Create the database using the psql command CREATE DATABASE bookmark_manager;
3.Connect to the database using the pqsl command \c bookmark_manager;
4.Run the query we have saved in the file 01_create_bookmarks_table.sql

SETUP ANOTHER DATABASE (BOOKMARK_MANAGER_TEST)
1.connect to psql
2.Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3.Connect to the database using the pqsl command \c bookmark_manager_test;
4.Run the query we have saved in the file 01_create_bookmarks_table.sql


CONDITIONS TO ALLOW TESTING FROM THE BOOKMARK_MANAGER_TEST ENVIRONMENT
if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end