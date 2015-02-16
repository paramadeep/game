describe "two_d_array" do
  array = [[1,2,3],[4,5,6]]
  two_d_array = TwoDArray.new array
  it "returns values at given position" do
    expect(two_d_array[1,1]).to eq 5
  end

  it "value can be modified for a given position" do
    two_d_array[1,1] = 10
    expect(two_d_array[1,1]).to eq 10
  end

  it "has a array" do
    expect(two_d_array.array).to eq array
  end

end


