require 'pony'
require 'io/console'

my_mail = 'G9160832993@yandex.ru'

print "Enter your #{my_mail} password for message send: "
password = STDIN.noecho(&:gets).chomp

print 'Whom send the message? (enter email): '
send_to = STDIN.gets.chomp

print 'Enter message body: '
body = STDIN.gets.chomp

Pony.mail(
  {
    subject: 'hi from Ruby',
    body:    body,
    to:      send_to,
    from:    my_mail,

    via: :smtp,
    via_options: {
      address:              'smtp.yandex.ru',
      port:                 '465',
      enable_starttls_auto: true,
      tls:                  true,
      user_name:            my_mail,
      password:             password,
      authentication:       :plain,
    }
  }
)

puts 'The message successfully sended'
