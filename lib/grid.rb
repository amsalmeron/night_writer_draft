

class Grid

  attr_reader :top_line, :mid_line, :bottom_line

  def initialize
    @top_line = ['.','.']
    @mid_line = ['.','.']
    @bottom_line = ['.','.']
  end

  def render
    puts top_line.join
    puts mid_line.join
    puts bottom_line.join
  end


end
