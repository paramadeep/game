require_relative "two_d_array"
class Layout

  def initialize array
    @two_d_array = TwoDArray.new array
  end

  def has_lives_at positions 
    positions.each {|position| has_life_at position[0],position[1] }
  end

  def has_life_at x,y
    @two_d_array[x,y] = 1
  end

  def has_life? x,y
    @two_d_array[x,y] == 1
  end

  def is_dead? x,y
    @two_d_array[x,y] == 0
  end

  class << self
    def with_area area 
      Layout.new build_dead_layout area
    end

    private
    def build_dead_layout area
      layout=[]
      area.width.times do
        columns = []
        area.height.times {columns << 0 }
        layout << columns
      end
      return layout
    end

  end
end


