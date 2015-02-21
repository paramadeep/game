describe "The Game" do

  it "works" do
    my_village = Village.begins_with :area=>Area.new(4,8),:lives_at=>[[1,4],[2,3],[2,4]]
    layout = get_next_generation_for_a_village my_village
    expect(layout).to eq [
     [".", ".", ".", ".", ".", ".", ".", "."],
     [".", ".", ".", "*", "*", ".", ".", "."],
     [".", ".", ".", "*", "*", ".", ".", "."],
     [".", ".", ".", ".", ".", ".", ".", "."]]
  end

  it "works for boarders" do
    my_village = Village.begins_with :area=>Area.new(4,8),:lives_at=>[[0,0],[0,1],[1,0]]
    layout = get_next_generation_for_a_village my_village
    expect(layout).to eq [
     ["*", "*", ".", ".", ".", ".", ".", "."],
     ["*", "*", ".", ".", ".", ".", ".", "."],
     [".", ".", ".", ".", ".", ".", ".", "."],
     [".", ".", ".", ".", ".", ".", ".", "."]]
  end

  it "tilts a line by 90 degree" do
    my_village = Village.begins_with :area=>Area.new(4,8),:lives_at=>[[2,2],[2,3],[2,4]]
    layout = get_next_generation_for_a_village my_village
    expect(layout).to eq [
     [".", ".", ".", ".", ".", ".", ".", "."],
     [".", ".", ".", "*", ".", ".", ".", "."],
     [".", ".", ".", "*", ".", ".", ".", "."],
     [".", ".", ".", "*", ".", ".", ".", "."]]
  end


  def get_next_generation_for_a_village my_village
    my_village.evolve
    next_generation = my_village.instance_variable_get(:@generations).present
    next_generation.instance_variable_get(:@two_d_array).instance_variable_get(:@array)
  end


end


