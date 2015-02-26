files = %w(checkout item promotion_multibuy promotion_spend)
files.each {|file| require file }

describe "integration tests" do

  before :each do
    make_items
    @co = Checkout.new(promotional_rules)
  end

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

  it "gives a total for scanned items 1, 2, 3" do
    @co.scan(@item1)
    @co.scan(@item2)
    @co.scan(@item3)
    expect(@co.total).to eq(66.78)
  end
  
  it "gives a total for scanned items 1, 3, 1" do
    @co.scan(@item1)
    @co.scan(@item3)
    @co.scan(@item1)
    expect(@co.total).to eq(36.95)
  end
  
  it "gives a total for scanned items 1, 2, 1, 3" do
    @co.scan(@item1)
    @co.scan(@item2)
    @co.scan(@item1)
    @co.scan(@item3)
    expect(@co.total).to eq(73.76)
  end
end
