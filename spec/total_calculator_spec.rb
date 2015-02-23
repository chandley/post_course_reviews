require 'total_calculator'

describe TotalCalculator do
  let(:totaliser) { TotalCalculator.new }
  let(:basket) { double :basket }
  let(:bogof) { double :promotion_multibuy }
  let(:supersize) { double :promotion_spend }

  before :each do
    totaliser.add_promotion(bogof)
    totaliser.add_promotion(supersize)
    allow(basket).to receive(:basic_total_price).and_return(3)
    allow(bogof).to receive(:discount_adjustment_factor).and_return(0)
    allow(supersize).to receive(:discount_adjustment_factor).and_return(0.1)
    allow(bogof).to receive(:discount_for).and_return(1)
    allow(supersize).to receive(:discount_for).and_return(1)
  end

  
  it 'can apply discounts to total price' do
    expect(bogof).to receive(:discount_for).and_return(1)
    expect(supersize).to receive(:discount_for).and_return(1)
    totaliser.discounted_total(basket)
  end

  it 'calculates a spend discount adjustment when multibuy discount already applied' do
    expect(supersize).to receive(:discount_adjustment_factor).and_return(0.1)
    totaliser.discounted_total(basket)
  end
end
