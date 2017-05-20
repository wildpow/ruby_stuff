=begin
The idea of this script was to take a text file with a list of about 300
movies and add them to a database so I didn't have to do it by hand. Also
some of these ideas eventually mite turn into a Netflix clone project
in Rails or Sinatra.  
=end

require 'sqlite3'

db = SQLite3::Database.new "test.db"

db.execute "CREATE TABLE IF NOT EXISTS Movies(id INTEGER PRIMARY KEY,
Title TEXT)"

file = File.open('test.txt', 'r')

while line = file.gets do
	movie_title = line.chomp.to_s
 
  db.execute( "INSERT INTO Movies (Title) VALUES (?)", [line])
end

db.close
