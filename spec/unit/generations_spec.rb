describe Generations do
  it "allows adding generation and retrieve last" do
    gens = Generations.new
    gens.add_generation 0
    gens.add_generation 1
    expect(gens.present).to eq 1
  end

end
