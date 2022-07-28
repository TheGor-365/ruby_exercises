require 'sqlite3'

db = SQLite3::Database.new 'barbershop.sqlite'

db.execute 'SELECT * FROM Users' do |row|
	puts row
	puts '==='
end
puts

db.execute 'SELECT * FROM Users' do |row|
	puts row[1]
	puts '==='
end
puts

db.execute 'SELECT * FROM Users' do |row|
	puts "Name: #{row[1]} visit: #{row[3]}"
	puts '==='
end
puts

db.execute 'SELECT * FROM Users' do |row|
	print row[1]
	print "\t\t"
	puts row[3]
	puts '==='
end
puts
