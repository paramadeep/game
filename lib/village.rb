require_relative 'area'
require_relative 'generations'
require_relative 'generation'
require_relative 'state'
require_relative 'rules'
require_relative 'judge'

class Village 

  def initialize area,live_positions
    @generations = Generations.new
    @generations.present = Generation.containing area,live_positions
    @area = area
  end

   def evolve
     new_generation = Judge.next_generation @generations.present,@area
     @generations.present = new_generation
   end

   def looks_like_this
     puts "Village looks like this"
     @generations.present.print
   end
end


