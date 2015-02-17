require 'promotion_multibuy'

describe PromotionMultibuy do
  let(:multibuy) { PromotionMultibuy.new }
  let(:basket) { double :basket }
  let(:item)  { double :item }

  before :each do
    multibuy.set_discount( item: item, quantity: 1, discount_price: 3 )
    allow(basket).to receive(:number_held).twice.and_return(2)
    allow(basket).to receive(:subtotal_for).and_return(8)
  end

  it 'looks up number held in basket' do
    expect(basket).to receive(:number_held).twice.and_return(2)
    multibuy.discount_for(basket)
  end

  it 'does not give a discount below offer quantity' do
    allow(basket).to receive(:number_held).twice.and_return(1)
    expect(multibuy.discount_for(basket)).to eq(0)
  end

  it 'gives a discount when buying more than offer quantity of item' do
    expect(multibuy.discount_for(basket)).to eq(2)
  end
end
