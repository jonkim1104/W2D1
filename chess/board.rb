require_relative 'bishop'

class Board
  attr_reader :rows
  
  def initialize
    @rows = Array.new(8, "piece"){Array.new(8, "piece")}
    #@sentinel = sentinel
    populate 
  end 
  
  def move_piece(start_pos, end_pos) 
    if start_pos.nil?  
      raise "Invalid move, there is no piece there"
    elsif end_pos.valid_pos?
      raise "Position invalid"
    end 
  end 
  
  def [](pos)
    @rows[pos.first][pos.last]
  end 
  
  def []=(pos,val)
    @rows[pos.first][pos.last] = val 
  end
  
  def add_piece(pos, piece)
    self[pos] = piece.symbol
  end 
  
  def valid_pos?
    
  end 

  def populate 
    bishop = Bishop.new(nil, nil, nil)
    (0..7).each do |idx|
      add_piece([7,idx], bishop)
      add_piece([6,idx], bishop)
    end 
    
  end 
  
  
end 

if $PROGRAM_NAME == __FILE__
  chess = Board.new
  p chess 
end