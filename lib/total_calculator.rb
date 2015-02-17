class TotalCalculator
  def initialize
    @promotions = []
  end
  
  def add_promotion(promotion)
    @promotions << promotion
  end

  def discounted_total(basket)
    basket.basic_total_price - total_discount(basket) 
  end

  private
  def total_discount(basket)
    @promotions.map { |promotion| promotion.discount_for(basket) }.reduce(:+)
  end
end
