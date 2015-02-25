require "checkout"

describe Checkout do
  it "can scan an item and calculate a total" do
    co = Checkout.new
    item = double Item, price: 1
    co.scan item
    expect(co.total).to eq 1
  end

  it "can apply a promotion" do
    promotion = double PromotionMultibuy
    co = Checkout.new([promotion])
    item = double Item, price: 1
    co.scan item
    expect(promotion).to receive(:discount_adjustment_factor).and_return(0)
    expect(promotion).to receive(:discount_for).and_return(0)
    co.total
  end
end
