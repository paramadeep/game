describe "two_d_array" do

  array = []
  two_d_array = []

  before(:each) do
    array = [[1,2,3],[4,5,6],[7,8,9],[10,11,12]]
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

  it "gives surrounding positions" do
    expect(two_d_array.surroundings_of [2,1]).to eq [
      [1,0],[1,1],[1,2],
      [2,0],      [2,2],
      [3,0],[3,1],[3,2]
    ]
  end

  it "gives surrounding positions have negative positions removed" do
    expect(two_d_array.surroundings_of [0,0]).to eq [
            [0,1],
      [1,0],[1,1]]
  end

 it "gives surrounding positions have out of length positions removed" do
    expect(two_d_array.surroundings_of [3,2]).to eq [
      [2,1],[2,2],
      [3,1]       ]
  end


end
