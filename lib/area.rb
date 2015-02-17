class Area
  attr_reader :width,:height
  def initialize width,height
    @width = width
    @height = height
  end

  def bounding_cells
    all_cells.select do |cell|
      [0,width-1].include?(cell[0]) || [0,height-1].include?(cell[1])
    end
  end

  def inner_cells
    all_cells - bounding_cells
  end

  def all_cells
    cells = []
    total_cells = @width.times {|x| @height.times {|y|cells << [x,y]}}
    return cells
  end
end


