class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

def initialize(x_coordinate, y_coordinate,direction)# is this method needed if I use attr_accessor
  @x_coordinate = x_coordinate
  @y_coordinate = y_coordinate
  @direction = direction
end
end
# pseudo code for right_turn methods and move
def right_turn
case
when N then new direction becomes E #how do I input starting N,E,W,S?
when E then new direction becomes S
when W then new direction becomes N
when S then new direction becomes W
end
# pseudo code for left_turn methods and move
def left_turn
case
when N then new direction becomes W #how do I input starting N,E,W,S?
when E then new direction becomes N
when W then new direction becomes S
when S then new direction becomes E
end
