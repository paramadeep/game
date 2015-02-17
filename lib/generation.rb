require_relative "two_d_array"

class Generation 

  def has_lives_at positions 
    positions.each do |position| 
      has_life_at position 
    end
  end

  def state_at *position
    @two_d_array[position]
  end

  def lives_around *position
    @two_d_array.surroundings_of(position).select{|pos| state_at(pos)==State.alive}.size
  end

  def has_life_at *position
    @two_d_array[position]= State.alive
  end

  def print
    @two_d_array.print
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
