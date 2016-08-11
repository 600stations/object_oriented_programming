class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

def initialize(x_coordinate, y_coordinate,direction)
  @x_coordinate = x_coordinate
  @y_coordinate = y_coordinate
  @direction = direction
end

# 
def right_turn(direction)#Not sure how to input
case
  when "N" then @direction "E" #how do I input starting N,E,W,S?
  when "E" then @direction "S"
  when "W" then @direction "N"
  when "S" then @direction "W"
end
#
def left_turn(direction)#Not sure how to input
case
  when "N" then new @direction "W" #how do I input starting N,E,W,S?
  when "E" then new @direction "N"
  when "W" then new @direction "S"
  when "S" then new @direction "E"
end
