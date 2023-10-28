pp 'Do you like cats?' =~ /like/


puts


if 'Do you like cats?'.match(/like/)
  puts 'Match found'
end


puts


def contains_vowel(string)
  string =~ /[aeiou]/
end

pp contains_vowel('test')
pp contains_vowel('sky')


puts


def contains_number(string)
  string =~ /[0-9]/
end

pp contains_number('The year is 2015')
pp contains_number('The cat is black')


puts


pp '5a5'.match(/\d.\d/)
pp '5a5'.match(/\d\.\d/)
pp '5.5'.match(/\d\.\d/)


puts


def ip_address?(string)
  !!(string =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end

pp ip_address?('192.168.1.1')
pp ip_address?('0000.0000')


puts


pp 'Regex are cool'.match /\w{4}/
pp 'Regex are cool'.match /^\w{4}$/


puts


Line = Struct.new(:time, :type, :msg)
LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/

def parse_line(line)
  line.match(LOG_FORMAT) { |m| Line.new(*m.captures) }
end

pp parse_line('12:41 INFO User has logged in.')


puts


pp (m = 'John 31'.match /\w+ (\d+)/)
pp m[1]


puts


# pp (m = "David 30".match /(?\w+) (?\d+)/)
# pp m[:age]
# pp m[:name]


puts


def number_after_word?(string)
  !!(string =~ /(?<=\w) (\d+)/)
end
pp number_after_word?('Grade 99')


puts


puts /a/.class
pp regexp = Regexp.new('a')
pp regexp = %r{\w+}


puts


pp "abc".match?(/[A-Z]/i)


puts


pp 'this is some string'.scan(/\w+/)
pp 'The year was 1492.'.scan(/\d+/)
pp string = 'lord of the rings'
pp string.gsub(/\w+/) { |w| w.capitalize }
pp email = 'test@example.com'
pp !!email.match(/\A[\w.+-]+@\w+\.\w+\z/)
