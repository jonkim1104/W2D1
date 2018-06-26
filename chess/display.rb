require 'colorize' 
require_relative 'board'

class Display 
  def initialize(board)
    @board = board
    #@cursor = cursor 
  end
  
  def render
    result = ""
    black = :black
    white = :white 
    @board.rows.each_with_index do |el, idx|
      temp_row = ""
      if idx.even?
        el.each_with_index do |square, idx2|
          if idx2.even?
            temp_row << "#{square}".colorize(:color => :blue, :background => :black)
          else 
            temp_row << "#{square}".colorize(:color => :blue, :background => :white)
          end
        end 
        result << temp_row + "\n" 
      else 
        el.each_with_index do |square, idx2|
          if idx2.even?
            temp_row << "#{square}".colorize(:color => :blue, :background => :white)
          else 
            temp_row << "#{square}".colorize(:color => :blue, :background => :black)
          end
        end 
        result << temp_row + "\n" 
      end 
    end 
    print result 
    
    # @board.rows.each do |row|
    #   puts "#{row}\n".red 
    #    #puts ---------------
    # end
  end

end

if $PROGRAM_NAME == __FILE__
  chess = Board.new
  disp = Display.new(chess)
  disp.render
  
  p "------"
   
end