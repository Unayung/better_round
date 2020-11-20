RSpec.describe BetterRound do
  it "has a version number" do
    expect(BetterRound::VERSION).not_to be nil
  end

  it "round numbers with custom symbol" do
    expect(123.45.better_round(1, '$')).to eq('$ 123.5')
  end

  it "round numbers with custom symbol and appendix" do
    expect(123.45.better_round(1, '$', '元')).to eq('$ 123.5 元')
  end
end
