require 'active_support/all'

module HexletCode
  autoload(:Tag, './class_form_generator_tags.rb')

  class << self
    def form_for(struct, *form, **attributes)
      attributes = attributes.map do |attr, value|
        attr == :url ? "action='#{value}'" : "#{attr}='#{value}'"
      end

      form << '<form '
      form << (attributes.present? ? attributes.join(' ') : "method='post'")
      form << ">\n  "
      form << "#{input(struct)}\n"
      form << '</form>'
      form.join
    end

    def input(struct, *attributes)
      input = []

      struct.each_pair do |key, value|
        define_method key do
          attributes[key]
        end
        define_method "#{key}=" do |value|
          attributes[key] = value
        end
        attributes << "#{key}='#{value}'"
      end

      input << '<input '
      input << (attributes.present? ? attributes.join(' ') : "name='' method=''")
      input << '>'
      input.join
    end
  end
end



User = Struct.new(:name, :job, :gender, keyword_init: true)
user = User.new(name: 'rob', job: 'hexlet', gender: 'm')


html_1 = HexletCode.form_for user, url: 'true', method: 'get' do |f|
  f.input :name, class: 'eric'
  f.input :job
end

# <form action="#" method="post">
#   <input name="name" type="text" value="rob">
#   <textarea name="job" cols="20" rows="40">hexlet</textarea>
# </form>

puts html_1; puts



html_2 = HexletCode.form_for user, url: '#' do |f|
  # f.input :name, class: 'user-input'
  # f.input :job
  # f.submit
end

# <form action="#" method="post">
#   <input name="name" type="text" value="rob" class="user-input">
#   <input name="job" type="text" value="">
# </form>

puts html_2; puts



html_3 = HexletCode.form_for user, url: '/users' do |f|
  # f.input :job, as: :text, rows: 50, cols: 50
end

# <form action="/users" method="post">
#   <textarea cols="50" rows="50" name="job">hexlet</textarea>
# </form>

puts html_3; puts



html_4 = HexletCode.form_for user, url: '/users' do |f|
  # f.input :name
  # f.input :job, as: :text
  # # Поля age у пользователя нет
  # f.input :age
end

# =>  `public_send': undefined method `age' for #<struct User id=nil, name=nil, job=nil> (NoMethodError)

puts html_4; puts
