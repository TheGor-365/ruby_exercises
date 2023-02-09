class Memo < Post
  def read_from_console
    puts 'New post (write "end" word for end your post): '

    line = nil
    @text = []

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Created #{@created_at.strftime("%Y-%m-%d %H:%M:%S")} \n\r \n\r"
    return @text.unshift(time_string)
  end

  def to_db_hash
    return super.merge(
      {
        'text': @text.join('\n\r')
      }
    )
  end
end
