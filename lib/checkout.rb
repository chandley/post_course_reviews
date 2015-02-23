require 'basket'

class Checkout
  def initialize()
    @basket = Basket.new
  end
  
  def scan(item)
    @basket.add item
  end
  
  def total
    @basket.basic_total_price
  end
end
