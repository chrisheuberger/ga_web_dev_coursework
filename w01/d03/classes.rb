class Forest
  attr_accessor :trees, :hourglass
  def initialize
  end
  def to_s
  "An awesome forest."
  end
end

forest = Forest.new

forest2 = Forest.initialize

=begin

class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  def display_balance(pin_number)
   puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end

  def withdraw(pin_number, amount)
     if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("Chris", 1776)
checking_account.withdraw(11, 500)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 500)
checking_account.display_balance(1234)

 - - - - - - - - - - - - - -

class Car

  def initialize
    @num_wheels = 4
  end

  def number_of_wheels
    @num_wheels
  end

  def set_number_of_wheels(new_number_of_wheels)
    @number=new_number_of_wheels
  end

  my_car = Car.new
  my_car.num_wheels

end

=end
