class Cat
   def initialize(name, preferred_food, meal_time)
      @name = name
      @preferred_food = preferred_food
      @meal_time = meal_time.to_i
   end

   def eats_at
     if @meal_time <= 11
       puts "eats at #{@meal_time} AM"
     else
       puts "eats at #{(@meal_time - 12)}  PM"
     end
   end
  #  def to_s #does this pass @time to a string value
  #    @time
  #  end

   def meow
      puts "My name is #{@name}, I eat #{@preferred_food} "   # must add eats_at method
   end
end

c1 = Cat.new("Sparkles", "tuna", 7)
c2 = Cat.new("Fluffy", "salmon", 22)

# c1.eats_at #How do I incorporate this in meow?
c1.meow

#c2.eats_at #How do I incorporate this in meow?
c2.meow
