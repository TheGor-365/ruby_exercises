require 'sqlite3'

def init_db
  db = SQLite3::Database.new 'db/leprosorium.sqlite'
  db.results_as_hash = true
end

init_db
