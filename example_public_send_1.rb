class MagicBox
  def say_hi;  puts 'Hi';  end
  def say_bye; puts'"Bye'; end

  private

  def say_secret
    pp 'Secret leaked, OMG'
  end

  protected

  def method_missing(method_name)
    pp 'I am do not learn that word yet'
  end
end



box = MagicBox.new

word = 'hi'

print box.send("say_#{word}")                # => says the secret if word=secret
print box.public_send("say_#{word}")         # => does not say the secret, just pretends that it does not know about it and calls method_missing.
puts



secret = 'secret'

print box.send("say_#{secret}")              # => says the secret if word=secret
print box.public_send("say_#{secret}")       # => does not say the secret, just pretends that it does not know about it and calls method_missing.
