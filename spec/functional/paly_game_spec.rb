describe "The Game" do

  it "works" do
    my_village = Village.begins_with :area=>Area.new(4,8),:lives_at=>[[1,4],[2,3],[2,4]]
    my_village.evolve
    next_generation = my_village.instance_variable_get(:@generations).present
    layout = next_generation.instance_variable_get(:@two_d_array).instance_variable_get(:@array)
    expect(layout).to eq [[".", ".", ".", ".", ".", ".", ".", "."],
     [".", ".", ".", "*", "*", ".", ".", "."],
     [".", ".", ".", "*", "*", ".", ".", "."],
     [".", ".", ".", ".", ".", ".", ".", "."]]
  end

end


