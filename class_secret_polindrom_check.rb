string = "Madam, I'm Adam"
temp_string = string.gsub(/\W/, '').downcase

temp_string.reverse.equal? string.gsub(/\W/, '').downcase ? (p 'yes') : (p 'no')
puts


class String
  def palindrome?
    self.gsub(/\W/, '').downcase.reverse == self.gsub(/\W/, '').downcase
  end
end

string.palindrome? ? (p 'yes') : (p 'no')
puts



def string.palindrome?
  self.gsub(/\W/, '').downcase.reverse == self.gsub(/\W/, '').downcase
end

string.palindrome? ? (p 'yes') : (p 'no')
puts


pp string.singleton_class
puts


pp string.singleton_class.instance_methods[0..5]
