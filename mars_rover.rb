class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

def initialize(x_coordinate, y_coordinate,direction)
  @x_coordinate = x_coordinate
  @y_coordinate = y_coordinate
  @direction = direction
end

# method to turn rover right
def right_turn(e_direction)#use placeholder name e_direction
  case right_turn
    when e_direction == "N" then @direction "E"
    when e_direction == "E" then @direction "S"
    when e_direction == "W" then @direction "N"
    when e_direction == "S" then @direction "W"
  end
# method to turn rover left
def left_turn(e_direction)#use placeholder name e_direction
  case left_turn
    when e_direction == "N" then new @direction "W"
    when e_direction == "E" then new @direction "N"
    when e_direction == "W" then new @direction "S"
    when e_direction == "S" then new @direction "E"
  end
  #
  # method to move rover-pseudo code
  def move(e_direction) #use placeholder name e_direction
    case move
      when e_direction == "N" then @y_coordinate += 1
      when e_direction == "E" then @x_coordinate += 1
      when e_direction == "W" then @x_coordinate -= 1
      when e_direction == "S" then @y_coordinate -= 1
    end
# Need way to control rover - psuedo code - Use case instead?
    def control
      case control
      when R then right_turn method
      when L then left_turn method
      when M then move method
    end
# Is this in or out of class??
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
end
