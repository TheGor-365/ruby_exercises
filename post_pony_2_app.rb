require 'pony'
require 'io/console'

my_mail = '7495500@gmail.com'

puts "Enter email #{my_mail} password for send: "
password = STDIN.noecho(&:gets).chomp

puts 'Whom send messege?'
send_to = STDIN.gets.chomp

puts "Input text: "
body = STDIN.gets.chomp

Pony.mail(
  {
    subject: 'Hey from Ruby',
    body:    body,
    to:      send_to,
    from:    my_mail,

    via: :smtp,
    via_options: {
      address:              'smtp.gmail.com',
      port:                 '587',
      enable_starttls_auto: true,
      user_name:            my_mail,
      password:             password,
      authentication:       :plain,
    }
  }
)


puts 'Mail sended'
