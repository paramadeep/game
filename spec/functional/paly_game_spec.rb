describe "The Game" do

  it "works" do
    my_village = Village.new Area.new(4,8),[[1,4],[2,3],[2,4]]
    my_village.looks_like_this
    my_village.evolve
    my_village.looks_like_this
  end

end


