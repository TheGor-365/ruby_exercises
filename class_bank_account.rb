class Account
  attr_reader :name, :balance

  def initialize(name, balance = 100)
    @name, @balance = name, balance
  end

  public

  def display_balance pin_number
    pin_number == pin ? (pp "Balance: $#{@balance}") : (pp pin_error)
  end

  def withdraw pin_number, amount
    if pin_number == pin
      @balance -= amount
      pp "Withdrew #{amount}"
    else
      pp pin_error
    end
  end

  private

  def pin; @pin = 1234; end
  def pin_error; 'Access denied: incorrect PIN'; end
end



checking_account = Account.new 'Gor', 100_000
pp checking_account

puts
puts

checking_account.display_balance 1234
checking_account.display_balance 12345

puts
puts

checking_account.withdraw 1234, 345
checking_account.display_balance 1234
