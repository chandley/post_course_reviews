files = %w(basket checkout item promotion_multibuy promotion_spend total_calculator)
files.each {|file| require './' + file + '.rb' }

def make_items
  @item1, @item2, @item3 = Item.new, Item.new, Item.new
  @item1.name, @item1.price = 'Lavender Heart', 9.25 
  @item2.name, @item2.price = 'Personalised Cufflinks', 45
  @item3.name, @item3.price = 'Kids T-shirt', 19.95
end

def promotional_rules 
  spend =  PromotionSpend.new
  spend.set_discount( threshold: 60, discount_factor: 0.1 ) 
  multibuy = PromotionMultibuy.new 
  multibuy.set_discount( item: @item1, quantity: 2, discount_price: 8.50 )
  [multibuy, spend]
end


