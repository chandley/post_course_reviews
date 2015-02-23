require "checkout"

describe Checkout do
  it "can scan an item" do
    co = Checkout.new
    item = double Item, price: 1
    co.scan item
    expect(co.total).to eq 1
  end
end
 
