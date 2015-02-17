describe Generation do

  lives_at = [[0,0]]
  area = Area.new 2,2
  generation =  Generation.containing(area,lives_at)

  before(:each) do
    generation =  Generation.containing(area,lives_at)
  end


  it "is able to creates generation for given area" do
    expect(generation.has_life?(0,0)).to eq true
    expect(generation.is_dead?(0,1)).to eq true
    expect(generation.is_dead?(1,0)).to eq true
    expect(generation.is_dead?(1,1)).to eq true
  end

  it "size of generation is as specified" do
    expect{generation.is_dead?(3,3)}.to raise_error
  end

  it "allows to set lives" do
    generation.has_lives_at [[1,1]]
    expect(generation.has_life?(0,0)).to eq true
    expect(generation.is_dead?(0,1)).to eq true
    expect(generation.is_dead?(1,0)).to eq true
    expect(generation.has_life?(1,1)).to eq true
  end

  it "allows to set life" do
    generation.has_life_at 1,1
    expect(generation.has_life?(0,0)).to eq true
    expect(generation.is_dead?(0,1)).to eq true
    expect(generation.is_dead?(1,0)).to eq true
    expect(generation.has_life?(1,1)).to eq true
  end



  it "fails to create if lives at borders", :nice_to_have=>true do
    expect{Village.new(:row=>3,:column=>3,:lives_at=>[[1,1],[2,3],[2,2]])}.to raise_error ""
  end

  it "fails to create if row is invalid", :nice_to_have=>true do
    expect{Village.new(:row=>3,:column=>3,:lives_at=>[[1,1],[2,3],[2,2]])}.to raise_error ""
  end

  it "fails to create if column is invalid", :nice_to_have=>true do
    expect{Village.new(:row=>3,:column=>3,:lives_at=>[[1,1],[2,3],[2,2]])}.to raise_error ""
  end

  it "fails to create if lives out of border", :nice_to_have=>true do
    expect{Village.new(:row=>3,:column=>3,:lives_at=>[[1,1],[2,3],[2,2]])}.to raise_error ""
  end


end
