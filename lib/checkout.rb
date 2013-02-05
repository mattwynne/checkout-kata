class Checkout
  def initialize(prices)
    @prices = prices
    @total = 0
  end
  
  def total
    @total
  end
  
  def buy(product_id)
    price = @prices[product_id]
    @total += price
  end
end
