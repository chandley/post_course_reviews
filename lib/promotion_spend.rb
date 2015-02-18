class PromotionSpend
  def set_discount(params)
    @threshold = params[:threshold]
    @discount_factor = params[:discount_factor]
  end
  
  def discount_for(basket)
    if qualify_for_discount?(basket)
      return basket.basic_total_price * @discount_factor
    end
    0
  end
  
  def discount_adjustment_factor(basket)
    qualify_for_discount?(basket) ? @discount_factor : 0 
  end

  private
  def qualify_for_discount?(basket)
    basket.basic_total_price >= @threshold
  end
end
