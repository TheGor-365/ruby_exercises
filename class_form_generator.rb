require 'active_support/all'

module HexletCode
  autoload(:Tag, "./class_form_generator_tags.rb")

  attr_accessor :input

  class << self
    def form_for(struct, **form_attributes)
      form = []

      form_attributes = form_attributes.map do |attr, value|
        attr == :url ? "action='#{value}'" : "#{attr}='#{value}'"
      end

      form << "<form "
      form_attributes.present? ? (form << "#{form_attributes.join(' ')}") : (form << "method='post'")
      form << ">\n\t"
      form << "#{input(struct)}\n"
      form << "</form>"
      form.join
    end

    def input(struct, *attributes)
      input_tag = []

      @input = struct.each_pair do |key, value|
        define_method "#{key}" do
          @attributes[key]
        end
        define_method "#{key}=" do |value|
          @attributes[key] = value
        end
        attributes << "#{key}='#{value}'"
        puts attributes
      end

      input_tag << "<input "
      attributes.present? ? (input_tag << "#{attributes.join(' ')}") : (input_tag << "name='' method=''")
      input_tag << ">"
      input_tag.join
    end
  end
end


User = Struct.new(:name, :job, :gender, keyword_init: true)
user = User.new(name: 'rob', job: 'hexlet', gender: 'm')

# user.each do |u|
#   u.input :name
# end

html = HexletCode.form_for user, url: 'true', method: 'get' do |f|
  # Проверяет есть ли значение внутри name
  pp f.input :name, class: 'eric'
  # # Проверяет есть ли значение внутри job
  # f.input :job
end

puts html
puts

pp user.to_h
pp user.members
pp user.values
puts

# <form action="#" method="post">
#   <input name="name" type="text" value="rob">
#   <textarea name="job" cols="20" rows="40">hexlet</textarea>
# </form>



html_2 = HexletCode.form_for user, url: '#' do |f|
  # f.input :name, class: 'user-input'
  # f.input :job
  # f.submit
end

# <form action="#" method="post">
#   <input name="name" type="text" value="rob" class="user-input">
#   <input name="job" type="text" value="">
# </form>
puts html_2
puts

html_3 = HexletCode.form_for user, url: '/users' do |f|
  # f.input :job, as: :text, rows: 50, cols: 50
end

# <form action="/users" method="post">
#   <textarea cols="50" rows="50" name="job">hexlet</textarea>
# </form>
puts html_3
puts

html_4 = HexletCode.form_for user, url: '/users' do |f|
  # f.input :name
  # f.input :job, as: :text
  # # Поля age у пользователя нет
  # f.input :age
end
# =>  `public_send': undefined method `age' for #<struct User id=nil, name=nil, job=nil> (NoMethodError)
puts html_4
puts
