require_relative 'layout'
require_relative 'area'
require_relative 'generations'

class Village 

  attr_reader :generations

   def initialize first_generation,area
    @generations = Generations.new
    @generations.add_generation first_generation
    @area = area
  end

end


