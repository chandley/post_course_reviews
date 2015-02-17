class Basket
  attr_reader :items
  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def subtotal_for(item)
    item.price * number_held(item)
  end

  def basic_total_price
    items.reduce(0) { |total, item| total + item.price }
  end

  def number_held(item)
    items.count(item)
  end
end
