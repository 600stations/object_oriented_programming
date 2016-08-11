class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

def initialize(x_coordinate, y_coordinate,direction)
  @x_coordinate = x_coordinate
  @y_coordinate = y_coordinate
  @direction = direction
end

# method to turn rover right
def right_turn(e_direction)#Not sure how to input
  case
    when "N" then @direction "E" #how do I input starting N,E,W,S?
    when "E" then @direction "S"
    when "W" then @direction "N"
    when "S" then @direction "W"
  end
# method to turn rover left
def left_turn(e_direction)#Not sure how to input
  case
    when "N" then new @direction "W" #how do I input starting N,E,W,S?
    when "E" then new @direction "N"
    when "W" then new @direction "S"
    when "S" then new @direction "E"
  end
  #
  # method to move rover-pseudo code
  def move(e_direction) # pass in direction?
    case
      when "N" then @y_coordinate = @y_coordinate + 1
      when "E" then @x_coordinate = @x_coordinate + 1
      when "W" then @x_coordinate = @x_coordinate - 1
      when "S" then @y_coordinate = @y_coordinate - 1
    end

    def control
    end

    #Need to determine size of Mars
    puts "What is your max x coordinate? - Enter number greater than 0" #Q1
    max_x_coordinate = gets.chomp.to_i
    puts "What is your max y coordinate? - Enter number greater than 0" #Q2
    max_y_coordinate = gets.chomp.to_i

    # Need to determine current position of rover
    puts "What is your current x coordinate? - Enter number greater than 0" #Q3
    current_x_coordinate = gets.chomp.to_i
    puts "What is your current y coordinate? - Enter number greater than 0" #Q4
    max_y_coordinate = gets.chomp.to_i

    # Need to ask for user command R, L, M
    puts "What do you want to do?:" # Q5
    puts "Enter R for Turn Right, Enter L for Turn Left, Enter M for Move"
    command = gets.chomp
end`
