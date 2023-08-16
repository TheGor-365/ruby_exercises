require 'pry'

def with_logging(description = '', &block)
  @log.puts "Starting '#{description}'"
  begin
  block.call
  rescue
    @log.puts "'#{description}' FAILED!"
    return -1
  end
  @log.puts "Completed '#{description}'"
  1
end


@log = File.open("text_files/log_#{Time.now.to_i}.txt", 'w+')

status_code = with_logging('Calculate seconds in a day') do
  puts 60 * 60 * 24
end
pp status_code

status_code = with_logging("Open a file I know doesn't exist") do
  File.readlines('100_%_not_a_file.txt') { |line| puts line }
end
pp status_code

puts



def say_with_time
  pp [yield, Time.now.to_s].join(', ')
end

say_with_time {'hello'}
