class Checkout
  attr :total

  def initialize
    @total = 0
    @count = Hash.new(0)
  end

  def scan(item)
    @total += PRICE[item]
    apply_discount(item)
  end
private
  def apply_discount(item)
    @count[item] += 1
    if (details = DISCOUNT[item])
      if @count[item] % details[:quantity] == 0
        @total -= details[:discount]
      end
    end
  end

  PRICE = { 'A' => 50, 'B' => 30, 'C' => 20, 'D' => 15 }
  DISCOUNT = { 'A' => {:quantity => 3, :discount => 20 }, 'B' => { :quantity => 2, :discount => 15 } }
end
