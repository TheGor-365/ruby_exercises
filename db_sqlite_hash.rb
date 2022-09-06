require 'sqlite3'

db = SQLite3::Database.new 'sinatra_barber_shop.sqlite'
db.results_as_hash = true

db.execute 'SELECT * FROM Users' do |row|
  print row['username']
  print "\t\t"
  puts row['datestamp']
  puts '==='
end
