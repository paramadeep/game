require_relative "two_d_array"

class Generation 

  def has_lives_at positions 
    positions.each do |position| 
      has_life_at position 
    end
  end

  def has_life_at *position
    @two_d_array[position]= State.alive
  end

  def has_life? *position
    @two_d_array[position] == State.alive
  end

  def is_dead? *position
    @two_d_array[position] == State.dead
  end

  def self.containing area,live_positions 
    two_d_array = TwoDArray.generate area,State.dead
    generation = Generation.new two_d_array
    generation.has_lives_at live_positions
    return generation
  end

  def initialize two_d_array
    @two_d_array = two_d_array
  end

end
