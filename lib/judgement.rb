module Judgement 
  extend self
  def for state,lives_around
    @rules[state].call(lives_around)
  end

  private
  let_live_for_live_cells_sorrounding_lives = [2,3]
  give_life_for_dead_cells_sorrounding_lives = [3]
  @rules = {
    State.alive=>Proc.new{|lives_around| let_live_for_live_cells_sorrounding_lives.include?(lives_around) ? State.alive: State.dead},
    State.dead=>Proc.new{|lives_around|  give_life_for_dead_cells_sorrounding_lives.include?(lives_around) ? State.alive: State.dead}
  }

end
