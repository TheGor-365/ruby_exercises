def ini_db
  @db = SQLite::Database.new 'leprosorium.sqlite'
  @db.results_as_hash = true
end

before do
  init_db
end
