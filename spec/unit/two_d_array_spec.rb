describe "two_d_array" do

  array = []
  two_d_array = []

  before(:each) do
    array = [[1,2,3],[4,5,6]]
    two_d_array = TwoDArray.new array
  end

  it "returns values at given position when accessed with array" do
    expect(two_d_array[[1,1]]).to eq 5
  end

  it "value can be modified for a given position when accessed with array" do
    two_d_array[[1,1]] = 10
    expect(two_d_array[[1,1]]).to eq 10
  end

  it "returns values at given position when accessed with value" do
    expect(two_d_array[1,1]).to eq 5
  end

  it "value can be modified for a given position when accessed with value" do
    two_d_array[1,1] = 10
    expect(two_d_array[1,1]).to eq 10
  end

end
