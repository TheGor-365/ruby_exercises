users = [
  { first: 'John', last: 'Smith', address: { city: 'San Francisco', country: 'US' } },
  { first: 'Pat', last: 'Roberta', address: { country: 'US' } },
  { first: 'Sam', last: 'Schwartzman' }
]

users.each do |user|
  pp user[:address][:city] if user[:address]
end; puts



users.each do |user|
  pp user.dig(:address, :city)
  pp user.dig(:address, :country)
end
