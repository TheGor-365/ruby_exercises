data = {
  name:         'hexlet',
  description:  'online courses',
  topic:        'programming'
}

name, description = data.values_at(:name, :description)

puts name
puts description
