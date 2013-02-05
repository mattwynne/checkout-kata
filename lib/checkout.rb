class Checkout
  def initialize(prices)
    @prices = prices
    @total = 0
  end
  
  def add(item)
    @total += price_of(item)
  end
  
  def total
    @total
  end
  
  private
  
  def price_of(item)
    @prices.fetch(item)
  end
end
