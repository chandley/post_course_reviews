require 'total_calculator'

describe TotalCalculator do
  let(:totaliser) { TotalCalculator.new }
  let(:basket) { double :basket }
  let(:bogof) { double :promotion_multibuy }
  let(:supersize) { double :promotion_spend }

  it 'can calculiate discounts to total price' do
    totaliser.add_promotion(bogof)
    totaliser.add_promotion(supersize)
    allow(basket).to receive(:basic_total_price).and_return(3)
    expect(bogof).to receive(:discount_for).and_return(1)
    expect(supersize).to receive(:discount_for).and_return(1)
    totaliser.discounted_total(basket)
  end
end
