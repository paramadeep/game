require_relative 'area'
require_relative 'generations'
require_relative 'generation'
require_relative 'state'
require_relative 'rules'
require_relative 'judge'

class Village 

  def self.begins_with args
    Village.new args[:area],args[:lives_at]
  end

  def initialize area,live_positions
    @generations = Generations.new
    @generations.present = Generation.containing area,live_positions
    @area = area
    @generations.present.print
  end

   def evolve
     new_generation = Judge.next_generation @generations.present,@area
     @generations.present = new_generation
     @generations.present.print
   end

end


