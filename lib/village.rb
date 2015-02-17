require_relative 'layout'
require_relative 'area'
require_relative 'generations'
require_relative 'generation'
require_relative 'state'

class Village 

  attr_reader :generations

   def initialize area,live_positions
    @generations = Generations.new
    @generations.add_generation Generation.containing area,live_positions
    @area = area
  end

end


