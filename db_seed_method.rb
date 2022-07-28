def is_barber_exists?
	db.execute('SELECT * FROM Barbers WHERE barbername = ?', [barbername]).length > 0
end

def seed_db db, barbers
  barbers.each do |barber|
    if !is_barber_exists? db, barber
      db.execute 'INSERT INTO Barbers (barbername) VALUES (?)', [barber]
    end
  end
end
