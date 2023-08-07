hash = {
	somename: 'Enter your name',
	phone: 'Enter your phone',
	date_time: 'Enter date and time',
	barber: 'Choose your barber',
	color: 'Choose color that you need'
}

error = hash.select { |key,_| params[key] == "" }.values.join(", ")

puts error
