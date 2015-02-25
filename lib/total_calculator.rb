class TotalCalculator
  def initialize
    @promotions = []
  end
 
  def add_promotion(promotion)
    @promotions << promotion
  end

  def discounted_total(basket)
    (basket.basic_total_price - total_discount(basket)).round(2)
  end

  private

  def total_discount(basket)
    @promotions.reduce(0) do |total_discount, promotion|
      adjust_existing(promotion, basket, total_discount) +
        promotion.discount_for(basket)
    end
  end

  def adjust_existing(promotion, basket, total_discount)
    total_discount * (1 - promotion.discount_adjustment_factor(basket))
  end
end
