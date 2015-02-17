class PromotionMultibuy
  def set_discount(params)
    @item =  params[:item]
    @quantity = params[:quantity]
    @discount_price = params[:discount_price]
  end

  def discount_for(basket)
    if basket.number_held(@item) >= @quantity
      new_subtotal = basket.number_held(@item) * @discount_price
      return basket.subtotal_for(@item) - new_subtotal
    end
    0
  end
end
