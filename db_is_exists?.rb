def is_barber_exists?
	db.execute('SELECT * FROM Barbers WHERE barbername = ?', [barbername]).length > 0
end
