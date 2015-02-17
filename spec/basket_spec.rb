require 'basket'
describe Basket do
  let (:basket) { Basket.new }
  let (:item) { double :item, price: 10 }
  
  it 'starts empty' do
    expect(basket.items.count).to eq(0)
  end

  it 'can contain an item' do
    basket.add item
    expect(basket.items).to include(item)
  end

  it 'can calculate basic total price' do
    basket.add(item)
    expect(basket.basic_total_price).to eq(10)
  end
end

