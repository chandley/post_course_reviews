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
#  def total_discount(basket)
#    @promotions.map { |promotion| promotion.discount_for(basket) }.reduce(:+)
#  end
  
  def total_discount(basket)
    total = 0
    @promotions.each do |promotion|
      total = total * (1 - promotion.discount_adjustment_factor(basket))
      total = total + promotion.discount_for(basket)
    end
    total
  end
end
