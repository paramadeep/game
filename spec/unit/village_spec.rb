describe "village" do

  it "on creation, instantiate and initialize the generations, size" do
    generations_class = class_double("Generations").as_stubbed_const(:transfer_nested_constants => true)
    generation_class = class_double("Generation").as_stubbed_const(:transfer_nested_constants => true)
    generations = instance_double("Generations")
    generation = instance_double("Generation")
    village = instance_double("Village")
    expect(generations_class).to receive(:new).with(no_args).and_return(generations)
    expect(generation_class).to receive(:containing).with("area","gen").and_return "c"
    expect(generations).to receive(:present=).with("c")
    expect(generations).to receive(:present).and_return(generation)
    expect(generation).to receive(:print)
    my_village = Village.new "area","gen"
    expect(my_village.instance_variable_get(:@area)).to eq "area"
  end

  it "evolves to next generation based on judgement rules" do

  end

end
