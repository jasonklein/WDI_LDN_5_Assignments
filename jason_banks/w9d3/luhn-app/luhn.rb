class Luhn

  attr_reader :name, :amount

  def initialize(name)
    @name = name
  end

  def set_amount_of_cards(amount)
    @amount = 0
    case 
    when amount < 0
      "Amount must be a number greater than 0."
    when amount > 10
      "Amount must be a number equal to 10 or less." # To manage the for loop.
    else
      @amount = amount
    end
  end







end