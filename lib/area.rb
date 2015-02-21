class Area
  attr_reader :width,:height
  def initialize width,height
    @width = width
    @height = height
  end

  def bounding_positions
    all_positions.select do |position|
      [0,width-1].include?(position[0]) || [0,height-1].include?(position[1])
    end
  end

  def inner_positions
    all_positions - bounding_positions
  end

  def all_positions
    positions = []
    total_positions = @width.times {|x| @height.times {|y|positions << [x,y]}}
    return positions
  end
end


