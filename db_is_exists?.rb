require 'sqlite3'

@db = SQLite3::Database.new 'db/leprosorium.sqlite'

@db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS Users (
    name  varchar(50),
    email varchar(50),
    grade varchar(5),
    blog  varchar(50)
  );
SQL

@db.execute 'INSERT INTO Users (name) VALUES("user");'

def as_hash db
  @db.results_as_hash = true
end

as_hash @db

def is_barber_exists?
	puts @db.execute('SELECT * FROM Users')
end

is_barber_exists?
