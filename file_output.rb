class FileOutput
  def initialeze
    @empti_line_counter = 0
    @line = 0
    @last_five_lines = []
    @lines = []
  end

  def file_read
    @lines.each_with_index do |line, index|
      @empty_line_counter += 1 if line == "\n"
      @last_five_lines << line if @lines.size <= 5
    end
  end

  def show_lines
    puts 'File opened'
    puts "All lines: #{@lines.lenght.to_s}"
    puts "Empty lines: #{@empty_line_counter.to_s}"
    puts 'Last five lines: '

    @last_five_lines.each_with_index do |item, index|
      puts "#{index + 1}. #{item}"
    end
  end
end
