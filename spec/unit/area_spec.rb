describe Area do
  it "persists the height and width" do
    area = Area.new 2,3
    expect(area.width).to eq 2
    expect(area.height).to eq 3
  end

  it "throws error when height and width is not positive integers", :nice_to_have => true do
  end

  it "gives all inner positions" do
    expect(Area.new(3,3).inner_positions).to eq [[1,1]]
  end

  it "gives all bounding positions" do
    expect(Area.new(3,3).bounding_positions).to eq [
      [0,0],[0,1],[0,2],
      [1,0],      [1,2],
      [2,0],[2,1],[2,2]
    ]
  end


end
