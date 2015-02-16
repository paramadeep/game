class TwoDArray
  attr_reader :array
  def initialize array
    @array = array
  end

  def [](*args)
    x = args[0]
    y = args[1]
    @array[x][y]
  end 

  def []=(*args)
    x = args[0]
    y = args[1]
    value = args[2]
    @array[x][y] = value
  end 
  
end
