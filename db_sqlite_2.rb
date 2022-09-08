require 'sqlite3'

db = SQLite3::Database.new 'db/sinatra_barber_shop.sqlite'

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
  puts "#{row[1]} will visit us at #{row[3]}"
  puts '==='
end
