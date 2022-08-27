str = "Madam, I'm Adam"
temp_str = str.gsub(/\W/, '').downcase

temp_str.reverse.equal? str.gsub(/\W/, '').downcase ? (p 'yes') : (p 'no')
puts


class String
  def palindrome?
    self.gsub(/\W/, '').downcase.reverse == self.gsub(/\W/, '').downcase
  end
end

str.palindrome? ? (p 'yes') : (p 'no')
puts



def str.palindrome?
  self.gsub(/\W/, '').downcase.reverse == self.gsub(/\W/, '').downcase
end

str.palindrome? ? (p 'yes') : (p 'no')
puts
p str.singleton_class
pp str.singleton_class.instance_methods[0..5]
