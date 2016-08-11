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
  def move(??) # pass in direction?
    case
      when "N" then @y_coordinate = @y_coordinate + 1
      when "E" then @x_coordinate = @x_coordinate + 1
      when "W" then @x_coordinate = @x_coordinate - 1
      when "S" then @y_coordinate = @y_coordinate - 1
    end
end`
