data = {
  name: 'hexlet',
  description: 'online courses',
  topic: 'programming'
}

# values_at возвращает массив из значений для указанных ключей
name, description = data.values_at(:name, :description)
puts name
puts description
