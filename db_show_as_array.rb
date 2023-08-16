require 'sqlite3'

db = SQLite3::Database.new 'db/barbershop.sqlite'

db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS Users (
    name  varchar(50),
    email varchar(50),
    grade varchar(5),
    blog  varchar(50)
  );
SQL

db.execute 'INSERT INTO Users (name) VALUES("user");'

db.execute 'SELECT * FROM Users' do |row|
	puts row
	puts
end

puts

db.execute 'SELECT * FROM Users' do |row|
	puts row[1]
	puts
end

puts

db.execute 'SELECT * FROM Users' do |row|
	puts "Name: #{row[1]} visit: #{row[3]}"
	puts
end

puts

db.execute 'SELECT * FROM Users' do |row|
	print row[1]
	print "\t\t"
	puts row[3]
	puts
end
