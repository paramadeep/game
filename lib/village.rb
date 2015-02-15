require_relative 'make_layout'

class Village 

  attr_accessor :generations

  def initialize values
    @generations = []
    @generations << (MakeLayout.with(values))
  end

  def present
    @generations.last
  end
end
