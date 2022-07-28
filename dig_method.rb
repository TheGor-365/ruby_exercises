users = [
  { first: 'John', last: 'Smith', address: { city: 'San Francisco', country: 'US' } },
  { first: 'Pat', last: 'Roberta', address: { country: 'US' } },
  { first: 'Sam', last: 'Schwartzman' }
]

# users.each do |user|
#   puts user[:address][:city]
# end

users.each do |user|
  puts user[:address][:city] if user[:address]
end

users.each do |user|
  puts user.dig(:address, :city)
end
