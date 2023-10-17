require 'sqlite3'

class Post
  @@SQLITE_DB_FILE = 'sqlite/task_book.sqlite'

  def self.post_types
    { 'Memo': Memo, 'Link': Link, 'Task': Task }
  end

  def self.create type
    return post_types[type].new
  end

  def self.find(limit, type, id)
    db = SQLite3::Database.open(@@SQLITE_DB_FILE)

    unless id.nil?
      db.results_as_hash = true

      result = db.execute('SELECT * FROM Posts WHERE id = ?', id)
      result = result[0] if result.is_a? Array

      db.close

      if result.empty?
        pp "Id #{id} not exists"
        return nil
      else
        # post = create(result['type'])
        # post.load_data(result)
        # return post
        result
      end
    end
  end

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console; end
  def to_strings; end

  def save
    file = File.new(file_path, 'w:UTF-8')

    for item in to_strings do
      file.puts(item)
    end
    file.close
  end

  def file_path
    file_path = 'text_files'
    file_name = @created_at.strftime("#{self.class.name}_%Y_%m_$d_%H_%M_%S.txt")

    return file_path + '/' + file_name
  end

  def save_to_db
    db = SQLite3::Database.open(@@SQLITE_DB_FILE)
    db.results_as_hash = true

    db.execute(
      "CREATE TABLE IF NOT EXISTS Posts (
        id INTEGER PRIMARY KEY,
        type TEXT,
        created_at DATETIME,
        text TEXT,
        url TEXT,
        due_date DATETIME
      )")

    db.execute(
      "INSERT INTO Posts (" +
      to_db_hash.keys.join(', ') + ")" +
      " VALUES (" +
      ('?,' * to_db_hash.size).chomp(',') + ")",
      to_db_hash.values
    )

    insert_row_id = db.last_insert_row_id
    db.close
    return insert_row_id
  end

  def to_db_hash
    {
      'type':       self.class.name,
      'created_at': @created_at.to_s
    }
  end

  def load_data(data_hash)
    @created_at = Time.parse(data_hash['created_at'])
  end
end
