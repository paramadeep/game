describe Generations do
  it "allows adding generation and retrieve last" do
    gens = Generations.new
    gens.present = 0
    gens.present =  1
    expect(gens.present).to eq 1
  end

end
