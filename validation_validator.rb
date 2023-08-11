print 'Enter you name: '
username = gets.strip

print 'Enter you phone: '
phone = gets.strip

print 'Enter date_time: '
date_time = gets.strip

print 'Enter you barber: '
barber = gets.strip

print 'Enter you color: '
color = gets.strip

input = {
	somename: username,
	phone: phone,
	date_time: date_time,
	barber: barber,
	color: color
}

def validator input
	hh = {
		somename: 'Enter your name',
		phone: 'Enter your phone',
		date_time: 'Enter date and time',
		barber: 'Choose your barber',
		color: 'Choose color that you need'
	}

	input.each do |name, value|
		if input[name] == ''
			puts hh[name]
		end
	end
end

input.each { |name, value| puts "#{name} #{value}" }

puts

validator input
