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

  def self.generate area,default_value
    layout=[]
    area.width.times do
      columns = []
      area.height.times {columns << default_value }
      layout << columns
    end
    TwoDArray.new layout
  end

end
