describe Judgement do

  it "kills any live cell other than two or three live neighbours" do
    [0,1,4,5,6,7,8].each {|lives| expect(Judgement.for State.alive,lives).to eq State.dead}
  end

  it "lets any live cell with two or three live neighbours lives" do
    [2,3].each {|lives| expect(Judgement.for State.alive,lives).to eq State.alive}
  end

  it "brings to life any dead cell with exactly three live neighbours" do
    expect(Judgement.for State.dead,3).to eq State.alive
  end

  it "any dead cell other than with exactly three live neighbours remains dead" do
    [0,1,2,4,5,6,7,8].each {|lives| expect(Judgement.for State.dead,lives).to eq State.dead}
  end
end
