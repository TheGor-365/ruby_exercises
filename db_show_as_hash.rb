require 'sqlite3'

db = SQLite3::Database.new 'db/barbershop.sqlite'

db.results_as_hash = true

db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS Users (
    name varchar(50),
    email varchar(50),
    grade varchar(5),
    blog varchar(50)
  );
SQL

db.execute 'INSERT INTO Users (name) VALUES("user");'

db.execute 'SELECT * FROM Users' do |row|
	print row['username']
	print "\t\t"
	puts row['datestamp']
	puts '==='
end
