require 'item'
describe Item do
  let (:item) { Item.new }

  it 'can have a price' do
    item.price = 9.25
    expect(item.price).to eq 9.25
  end

  it 'can have a name' do
    item.name = 'Lavender Heart'
    expect(item.name).to eq 'Lavender Heart'
  end
end
