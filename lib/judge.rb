module Judge 
  extend self

  def next_generation input_generation,area
    live_positions  = area.inner_cells.select do |position| 
      judgement = judgement_for input_generation.state_at(position),input_generation.lives_around(position) 
      judgement.eql? State.alive
    end
    Generation.containing area,live_positions
  end

  private 
  def judgement_for state,lives_around
    Rules.for(state).call lives_around
  end

end
