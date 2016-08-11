class Cat
   def initialize(name, preferred_food, meal_time)# declare class and initialize var
      @name = name
      @preferred_food = preferred_food
      @meal_time = meal_time.to_i
   end

   def eats_at # method dermines if AM or PM
     if @meal_time == 12
        " at #{@meal_time} PM" # this will handle 12:00 noon
     elsif @meal_time <= 11
        " at #{@meal_time} AM"
     else
       " at #{(@meal_time - 12)} PM" #change from 24 hr clock to AM PM format
     end
   end


   def meow
      puts "My name is #{@name}, I eat #{@preferred_food} #{eats_at}" #Note: syntax to display eats_at method
   end
end

c1 = Cat.new("Sparkles", "tuna", 7)#create new instance of class for cat
c2 = Cat.new("Fluffy", "salmon", 12)
c3 = Cat.new("Max", "cod", 22)


c1.meow #calls method for cat 1
c2.meow#calls method for cat 2
c3.meow
