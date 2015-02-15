module MakeLayout
  extend self

  def with values 
    layout = build_skeliton values[:row],values[:column]
    mark_lives layout,values[:lives_at]
  end

  private
  def build_skeliton row,column
    layout=[]
    row.times do
      columns = []
      column.times do
        columns << 0
      end
      layout << columns
    end
    return layout
  end

  def mark_lives layout,lives_at
    lives_at.each {|life_at| layout[life_at[0]-1][life_at[1]-1] = 1 }
    return layout
  end

end
