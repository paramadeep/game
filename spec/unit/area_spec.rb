describe Area do
  it "persists the height and width" do
    area = Area.new 2,3
    expect(area.width).to eq 2
    expect(area.height).to eq 3
  end

  it "throws error when height and width is not positive integers", :nice_to_have => true do
  end
end
