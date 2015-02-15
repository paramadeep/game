describe "a village" do

  it "creates a valid village" do
    my_village = Village.new(:row=>3,:column=>3,:lives_at=>[[2,2]])
    expect(my_village.present).to eq [
      [0,0,0],
      [0,1,0],
      [0,0,0]]
  end

  it "fails to create if lives at borders", :nice_to_have=>true do
    expect{Village.new(:row=>3,:column=>3,:lives_at=>[[1,1],[2,3],[2,2]])}.to raise_error ""
  end

end
