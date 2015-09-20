require 'spec_helper'

describe PrimingSugar do
  it 'has a version number' do
    expect(PrimingSugar::VERSION).not_to be nil
  end

  it 'calculates priming sugar amounts in grams with pure sugar' do
    valid_args = {
      temperature: 75,
      gallons: 1,
      co2: 2.4,
      sugar_efficiency: 1
    }

    valid_result = 24.667752937500005

    expect(PrimingSugar::Calculator.run(valid_args)).to eq(valid_result)
  end

  it 'calculates priming sugar amounts in grams with dry malt extract' do
    valid_args = {
      temperature: 75,
      gallons: 1,
      co2: 2.4,
      sugar_efficiency: 0.8
    }

    valid_result = 30.834691171875004

    expect(PrimingSugar::Calculator.run(valid_args)).to eq(valid_result)

  end
end
