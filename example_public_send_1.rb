class MagicBox
  def say_hi; puts "Hi"; end
  def say_bye; puts "Bye"; end

  private
  def say_secret
    puts "Secret leaked, OMG!!!"
  end

  protected
  def method_missing(method_name)
    puts "I didn't learn that word yet :\\"
  end
end

pp box = MagicBox.new
puts
pp "What do you want met to say? "
pp word = 'hi'
puts
pp box.send("say_#{word}")        # => says the secret if word=secret
pp box.public_send("say_#{word}") # => does not say the secret, just pretends that it does not know about it and calls method_missing.
puts
pp "What do you want met to say? "
pp secret = 'secret'
puts
pp box.send("say_#{secret}")        # => says the secret if word=secret
pp box.public_send("say_#{secret}") # => does not say the secret, just pretends that it does not know about it and calls method_missing.
