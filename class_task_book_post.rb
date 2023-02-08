class Post
  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console

  end

  def to_strings

  end

  def save
    file = File.new(file_path, "w:UTF-8")

    for item in to_strings do
      File.puts(item)
    end
    file.close
  end

  def file_path
    file_path = 'text_files/ChooseClass.txt'
    file_name = @created_at.strftime("#{self.class.name}_%Y_%m_$d_%H_%M_%S.txt")

    return file_path + '/' + file_name
  end
end
