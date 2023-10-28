full_name = 'Mia Smith Jr.'

def display(string)
  pp string
end

pp full_name.send('count', 'i')
pp full_name.send('size')
pp full_name.send(:upcase)
pp full_name.send(:downcase).split


puts


pp full_name.public_send('count', 'i')
pp full_name.public_send('size')
pp full_name.public_send(:upcase)
pp full_name.public_send(:downcase).split


puts


display full_name
send(:display, full_name.upcase.split)
# public_send(:display, full_name)
