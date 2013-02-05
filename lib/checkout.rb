class Checkout
  def initialize(price_of_beans)
    @price_of_beans = price_of_beans
  end
  
  def total
    @price_of_beans
  end
end
