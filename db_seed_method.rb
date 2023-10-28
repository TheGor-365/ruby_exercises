require 'sqlite3'

@db = SQLite3::Database.new 'db/the_barbers.sqlite'

@db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS the_barbers (
    barbername varchar(50),
    email      varchar(50),
    grade      varchar(5),
    blog       varchar(50)
  );
SQL

def is_barber_exists?
	@db.execute('SELECT * FROM Barbers WHERE barbername = ?', [barbername]).length > 0
end

def seed_db(db, barbers)
  barbers.each do |barber|
    if !is_barber_exists? db, barber
      @db.execute('INSERT INTO Barbers (barbername) VALUES (?)', [barber])
    end
  end
end

def show_barbers
	puts @db.execute('SELECT * FROM the_barbers')
end

show_barbers
