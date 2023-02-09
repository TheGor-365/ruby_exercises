require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "What todo? "
    @text = STDIN.gets.chomp

    puts "When it must be done?"
    puts "Add date in format 'DD.MM.YY': "
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created #{@created_at.strftime("%Y-%m-%d %H:%M:%S")} \n\r \n\r"
    deadline = "Deadline #{@due_date}"
    return [deadline, @text, time_string]
  end

  def to_db_hash
    return super.merge(
      {
        'text': @text,
        'due_date': @due_date.to_s
      }
    )
  end
end
