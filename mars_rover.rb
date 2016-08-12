class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

def initialize(x_coordinate, y_coordinate, direction)
  @x_coordinate = x_coordinate
  @y_coordinate = y_coordinate
  @direction = direction
end

# method to turn rover right
def right_turn(e_direction)#use placeholder name e_direction
  case right_turn
    when e_direction == "N"
      @direction = "E"
    when e_direction == "E"
      @direction = "S"
    when e_direction == "W"
      @direction = "N"
    when e_direction == "S"
       @direction = "W"
  end
end
# method to turn rover left
def left_turn(e_direction)#use placeholder name e_direction
      case left_turn
      when e_direction == "N"
        @direction = "W"
      when e_direction == "E"
        @direction = "N"
      when e_direction == "W"
        @direction = "S"
      when e_direction == "S"
        @direction = "E"
      end
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
  end
# Need way to control rover - psuedo code - Use case instead?
    def read_instruction(driving_instructions)
      case control
        when driving_instructions == R then right_turn
        when driving_instructions == L then left_turn
        when driving_instructions == M then move
    end
  end
    # Is this in or out of class?? How can I use this for more than 1 rover? A method?
        #Need to determine the size of Mars grid
        puts "What is your maximum x coordinate? - Enter number greater than 0" #Q1
        max_x_coordinate = gets.chomp.to_i
        puts "What is your maximum y coordinate? - Enter number greater than 0" #Q2
        max_y_coordinate = gets.chomp.to_i
        # Need to determine current position of rover
        puts "What is your starting x coordinate? - Enter number greater than 0" #Q3
        start_x_coordinate = gets.chomp.to_i
        puts "What is your starting y coordinate? - Enter number greater than 0" #Q4
        start_y_coordinate = gets.chomp.to_i
        # Need to ask for user command R, L, M
        puts "What do you want to do?:" # Q5
        puts "Enter R for Turn Right, enter L for Turn Left or enter M for Move"
        driving_instructions = gets.chomp
end

#Create new rovers here
rover_1 = Rover.new(" ", " ", "N")
rover_1.read_instruction
