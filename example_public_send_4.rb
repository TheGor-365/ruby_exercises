class Greet
  def public_greet
    pp 'greet from public'
  end

  private

  def private_greet
    pp 'greet from private'
  end
end


greet = Greet.new

greet.send(:public_greet)
greet.send(:private_greet)
greet.public_send(:public_greet)
# greet.public_send(:private_greet)
