class Generations 
  def initialize 
    @generations = []
  end

  def present
    @generations.last
  end

  def present= generation
    @generations << generation
  end
end
