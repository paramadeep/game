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
    looks_like_this
  end

   def evolve
     new_generation = Judge.next_generation @generations.present,@area
     @generations.present = new_generation
     looks_like_this
   end

   def looks_like_this
     puts "Village now has this generation"
     @generations.present.print
   end
end


