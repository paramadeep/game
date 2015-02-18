describe "The Game" do

  it "works" do
    my_village = Village.begins_with :area=>Area.new(4,8),:lives_at=>[[1,4],[2,3],[2,4]]
    my_village.evolve
  end

end


