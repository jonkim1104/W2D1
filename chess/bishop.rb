require_relative "piece"

class Bishop < Piece 
  attr_reader :color 
  def initialize(color, board, pos)
    super(color, board, pos)
    @move_dirs = []
    
  end

  
  def symbol 
    "  \u2657  ".encode('utf-8')
  end 
end

if $PROGRAM_NAME == __FILE__
  bishop = Bishop.new("board",nil, [0,0])
  p bishop.symbol
end 