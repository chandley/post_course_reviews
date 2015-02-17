class Basket
  attr_reader :items
  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end
  
  def basic_total_price
    items.first.price
    items.reduce(0) { |total, item| total + item.price }
  end
end
