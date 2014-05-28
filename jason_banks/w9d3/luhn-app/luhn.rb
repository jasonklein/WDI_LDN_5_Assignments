class Luhn

  attr_reader :name, :amount, :cards_array

  def initialize(name)
    @name = name
  end

  # this method is not currently useful, as I need to review the RSpec docs about printing something to the console and storing the response from the user.

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

  def compile_cards_array(array)
    @cards_array = []
    array.each do |number|
      @cards_array << number
    end
  end







end