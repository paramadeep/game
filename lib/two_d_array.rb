class TwoDArray
  def initialize array
    @array = array
  end

  def [](*args)
    args = args.flatten
    x = args[0]
    y = args[1]
    @array[x][y]
  end 

  def []=(*args)
    args = args.flatten
    x = args[0]
    y = args[1]
    value = args[2]
    @array[x][y] = value
  end 

  def print
    @array.each{|array| puts"#{array.join ' '}"}
  end

  def self.generate area,default_value
    layout=[]
    area.width.times do
      columns = []
      area.height.times {columns << default_value }
      layout << columns
    end
    TwoDArray.new layout
  end

  def surroundings_of(*args)
    args = args.flatten
    offset = [args[0]-1,args[1]-1] 
    sorroundings = Area.new(3,3).bounding_positions
    actual = sorroundings.each_with_index {|position,index| sorroundings[index] = [position[0]+offset[0],position[1]+offset[1]] }
    negative_positions_removed = actual.select {|position| position[0] >= 0 && position[1] >=0 }
    out_of_lenght_removed =  negative_positions_removed.select do |position| 
      position[0] < @array.size && position[1] < @array[0].size 
    end
  end

end
