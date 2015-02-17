describe Generation do

  lives_at = [[0,0]]
  area = Area.new 2,2
  generation =  Generation.containing(area,lives_at)

  before(:each) do
    generation =  Generation.containing(area,lives_at)
  end


  it "is able to creates generation for given area" do
    [[0,0]].each {|position| expect(generation.state_at position).to eq State.alive}
    [[1,0],[0,1],[1,1]].each {|position| expect(generation.state_at position).to eq State.dead}
  end

  it "size of generation is as specified" do
    expect{generation.is_dead?(3,3)}.to raise_error
  end

  it "allows to set lives" do
    generation.has_lives_at [[1,1]]
    [[0,0],[1,1]].each {|position| expect(generation.state_at position).to eq State.alive}
    [[1,0],[0,1]].each {|position| expect(generation.state_at position).to eq State.dead}
  end

  it "allows to set life" do
    generation.has_life_at 1,1
    [[0,0],[1,1]].each {|position| expect(generation.state_at position).to eq State.alive}
    [[1,0],[0,1]].each {|position| expect(generation.state_at position).to eq State.dead}
  end




end
