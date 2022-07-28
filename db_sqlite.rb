require 'dbi'

db = DBI::BaseDatabase.new 'sinatra_barber_shop.sqlite'

db.execute 'SELECT * FROM Users' do |row|
  puts row
  puts '==='
end
