require_relative './class_metapro_model'

class User
  include Model

  attribute :name, type: :string, default: 'Andrey'
  attribute :birthday, type: :datetime
  attribute :active, type: :boolean, default: false
end

pp user = User.new(
  name: 'Ivan',
  birthday: '03/02/1987',
  active: 'true'
)
puts

pp user.attributes
puts

pp user_2 = User.new
pp user_2.name
pp user_2.attributes
