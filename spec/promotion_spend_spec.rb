require 'promotion_spend'

describe PromotionSpend do
  let(:spend) { PromotionSpend.new }
  let(:basket) { double :basket }

  before :each do
    spend.set_discount( threshold: 60, discount_factor: 0.1 ) 
  end

  it 'does not apply a discount below the threshold' do
    allow(basket).to receive(:basic_total_price).and_return(40)
    expect(spend.discount_for(basket)).to eq(0)
  end

  it 'applies a discount above the threshold' do
    allow(basket).to receive(:basic_total_price).and_return(70)
    expect(spend.discount_for(basket)).to eq(7)
  end
end
