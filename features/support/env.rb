require File.dirname(__FILE__) + '/../../lib/checkout'

module CheckoutDriver
  def set_price(product, price)
    prices[product] = price
  end
  
  def buy(num, product)
    num.times do
      checkout.add(product)
    end
  end
  
  def total
    checkout.total
  end
  
  private
  
  def checkout
    @checkout ||= Checkout.new(prices)
  end
  
  def prices
    @prices ||= {}
  end
end

World(CheckoutDriver)