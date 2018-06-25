# PHASE 2
def convert_to_int(str)
    Integer(str)
  rescue ArgumentError 
  nil 
end


# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin 
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)
  rescue StandardError 
  puts "invalid fruit, you can try again if you give me coffee:"
  coffee = gets.chomp 
  if coffee == "coffee"
    retry 
  end 
  
  end 

end  

#feed_me_a_fruit

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    if yrs_known <= 5 
      raise "We werent friend long enough"
    elsif name.empty? 
      raise "please enter your name"
    elsif fav_pastime.empty?
      raise "please enter your favorite pastime"
    end 
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end

if $PROGRAM_NAME == __FILE__
  dude = BestFriend.new("Jon",8,"basketball")
end