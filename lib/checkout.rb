class Checkout
  def initialize(promotions=[])
    @basket = Basket.new
    @promotions = promotions
  end
  
  def scan(item)
    @basket.add item
  end
  
  def total
    total_calculator = TotalCalculator.new
    @promotions.each { |promotion| total_calculator.add_promotion(promotion) }
    total_calculator.discounted_total(@basket)
  end
end
