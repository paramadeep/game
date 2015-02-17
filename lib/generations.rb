class Generations 
  def initialize 
    @generations = []
  end

  def present
    @generations.last
  end

  def add_generation generation 
    @generations << generation
  end
end
