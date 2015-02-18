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
    @promotions.reduce(0) do |total, promotion|
      total = total * (1 - promotion.discount_adjustment_factor(basket))
      total + promotion.discount_for(basket)
    end
  end

end
