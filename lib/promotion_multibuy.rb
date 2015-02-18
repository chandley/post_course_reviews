class PromotionMultibuy
  def set_discount(params)
    @item =  params[:item]
    @quantity = params[:quantity]
    @discount_price = params[:discount_price]
  end

  def discount_for(basket)
    if qualify_for_discount?(basket)
      return basket.subtotal_for(@item) - discounted_subtotal(basket)
    end
    0
  end
  
  def discount_adjustment_factor(basket)
    0
  end
  private
  def qualify_for_discount?(basket)
    basket.number_held(@item) >= @quantity
  end

  def discounted_subtotal(basket)
    basket.number_held(@item) * @discount_price
  end
end
