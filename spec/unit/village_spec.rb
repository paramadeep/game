describe "village" do

  it "on creation, instantiate and initialize the generations, size" do
    generations_class = class_double("Generations").as_stubbed_const(:transfer_nested_constants => true)
    generations = instance_double("Generations")
    expect(generations_class).to receive(:new).with(no_args).and_return(generations)
    expect(generations).to receive(:add_generation).with("a")
    my_village = Village.new "a","b"
    expect(my_village.instance_variable_get(:@area)).to eq "b"
  end

end
