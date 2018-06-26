require 'colorize' 
require_relative 'board'
require_relative 'cursor'


class Display 
  attr_accessor :cursor, :board
  
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end
  
  def render
    system("clear")
    result = ""
    cursor_pos = @cursor.cursor_pos
    black = :black
    white = :white 
    cursor_color = :red 
    @board.rows.each_with_index do |el, idx|
      temp_row = ""
      if idx.even?
        el.each_with_index do |square, idx2|
          if idx2.even?  
            color = white 
            color = cursor_color if cursor_pos == [idx, idx2]
            temp_row << "#{square}".colorize(:color => :blue, :background => color)
          else 
            color = black 
            color = cursor_color if cursor_pos == [idx, idx2]
            temp_row << "#{square}".colorize(:color => :blue, :background => color)
          end
        end 
        result << temp_row + "\n" 
      else 
        el.each_with_index do |square, idx2|
          if idx2.even?
            color = black
            color = cursor_color if cursor_pos == [idx, idx2]
            temp_row << "#{square}".colorize(:color => :blue, :background => color)
          else 
            color = white   
            color = cursor_color if cursor_pos == [idx, idx2]
            temp_row << "#{square}".colorize(:color => :blue, :background => color)
          end
        end 
        result << temp_row + "\n" 
      end 
    end 
    print result 
  
  end

end

if $PROGRAM_NAME == __FILE__
  chess = Board.new

  disp = Display.new(chess)
  
  
  
  sorted = false
  until sorted
  
    disp.render
    p "------"
    disp.cursor.get_input
    p "------"
    
  end 
   
end