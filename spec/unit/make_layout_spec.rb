describe MakeLayout do
  it "creates valid layout" do
    layout =  MakeLayout.with(:row=>3,:column=>3,:lives_at=>[[2,2]])
    expect(layout).to eq [
      [0,0,0],
      [0,1,0],
      [0,0,0]]
  end
end
