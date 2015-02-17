class PromotionSpend
  def set_discount(params)
    @threshold = params[:threshold]
    @discount_factor = params[:discount_factor]
  end
  
  def discount_for(basket)
    if basket.basic_total_price >= @threshold
      return basket.basic_total_price * @discount_factor
    end
    0
  end
end
