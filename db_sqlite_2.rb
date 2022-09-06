require 'sqlite3'

db = SQLite3::Database.new 'sinatra_barber_shop.sqlite'

db.execute 'SELECT * FROM Users' do |row|
  puts "#{row[1]} will visit us at #{row[3]}"
  puts '==='
end
