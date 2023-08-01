require_relative './class_metapro_model'

class User
  include Model

  attribute :name,     type: :string,   default: 'Andrey'
  attribute :active,   type: :boolean,  default: false
  attribute :birthday, type: :datetime
end

pp user = User.new(
  name:     'Ivan',
  birthday: '03/02/1987',
  active:   'true'
)

puts
puts

pp user.attributes

puts
puts

pp user_2 = User.new

pp user_2.name
pp user_2.birthday
pp user_2.active

puts

pp user_2.attributes
