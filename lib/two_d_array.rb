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
    sorroundings = Area.new(3,3).bounding_cells
    sorroundings.each_with_index {|position,index| sorroundings[index] = [position[0]+offset[0],position[1]+offset[1]] }
  end

end
