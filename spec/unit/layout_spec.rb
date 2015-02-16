describe Layout do
  it "is able to creates dead layout for given area" do
    dead_layout =  Layout.with_area(Area.new(2,2))
    expect(dead_layout.is_dead?(0,0)).to eq true
    expect(dead_layout.is_dead?(0,1)).to eq true
    expect(dead_layout.is_dead?(1,0)).to eq true
    expect(dead_layout.is_dead?(1,1)).to eq true
  end

  it "size of layout is as specified" do
    dead_layout =  Layout.with_area(Area.new(3,3))
    expect{dead_layout.is_dead?(4,4)}.to raise_error
  end

  it "allows to set lives" do
    layout =  Layout.with_area(Area.new(2,2))
    layout.has_lives_at [[1,1],[0,0]]
    expect(layout.has_life?(0,0)).to eq true
    expect(layout.is_dead?(0,1)).to eq true
    expect(layout.is_dead?(1,0)).to eq true
    expect(layout.has_life?(1,1)).to eq true
  end

  it "allows to set life" do
    layout =  Layout.with_area(Area.new(2,2))
    layout.has_life_at 1,1
    layout.has_life_at 0,0
    expect(layout.has_life?(0,0)).to eq true
    expect(layout.is_dead?(0,1)).to eq true
    expect(layout.is_dead?(1,0)).to eq true
    expect(layout.has_life?(1,1)).to eq true
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
