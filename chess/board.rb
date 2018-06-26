class Board
  attr_reader :rows
  
  def initialize
    @rows = Array.new(8, "piece"){Array.new(8, "piece")}
    #@sentinel = sentinel
  end 
  
  def move_piece(start_pos, end_pos) 
    if start_pos.nil?  
      raise "Invalid move, there is no piece there"
    elsif end_pos.valid_pos?
      raise "Position invalid"
    end 
  end 
  
  def [](pos)
    self.rows[pos.first][pos.last]
  end 
  
  def []=(pos,val)
    self.rows[pos.first][pos.last] = val 
  end
  
  def populate
     
  end 
  
end 

if $PROGRAM_NAME == __FILE__
  chess = Board.new
  chess.display
  p "------"
  chess.populate 
  p "----"
  chess.display 
end