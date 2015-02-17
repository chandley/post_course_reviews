require 'promotion_multibuy'

describe PromotionMultibuy do
  let(:multibuy) { PromotionMultibuy.new }  
  let(:basket) { double :basket }
  let(:item)  { double :item }

  it 'looks up number held in basket' do
    multibuy.set_discount( { item: item, quantity: 2, discount_price: 3 } ) 
    expect(basket).to receive(:number_held).twice.and_return(2)
    allow(basket).to receive(:subtotal_for).and_return(6)

    multibuy.discount_for(basket)
  end

end

