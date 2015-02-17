require_relative "two_d_array"
class Layout

  def initialize array
    @two_d_array = TwoDArray.new array
  end
  class << self
    private
  end
end


