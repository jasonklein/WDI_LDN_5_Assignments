class Checkout

  attr_reader :basket, :items, :total_price

  def initialize(basket)
    @basket = basket
    @items = {SR1: 0, FR1: 0, CF1: 0}
    @total_price = 0.0
  end

  def determine_basket_composition
    basket.each do |item|
      if item == :SR1.to_s
        items[:SR1] += 1
      elsif item == :FR1.to_s
        items[:FR1] += 1
      else
        items[:CF1] += 1
      end
    end
  end

  def scan_items
    @total_price += price_strawberries(items[:SR1]) + price_fruit_tea(items[:FR1]) + total_price + price_coffee(items[:CF1])
  end

  def price_strawberries(amount)
    current_price = 5.00
    discount_price = 4.50
    if amount >= 3 
      price = amount * discount_price
    else
      price = amount * current_price
    end
    price
  end

  def price_fruit_tea(amount)
    current_price = 3.11
    bogo_amount = amount - (amount / 2)
    price = bogo_amount * current_price
    price
  end

  def price_coffee(amount)
    current_price = 11.23
    price = amount * current_price
    price
  end



end