class Cat
   def initialize(name, food, time)
      @name = name
      @food = food
      @time = time.to_i
   end

   def eats_at
     if @time <= 11
       puts "eats at #{@time} AM"
     else
       puts "eats at #{(@time - 12)}  PM" #must -12
     end
   end

   def meow
      puts "My name is #{@name}, I eat #{@food}" # must add time
   end
end

c1 = Cat.new("Sparkles", "tuna", 7)
c2 = Cat.new("Fluffy", "salmon", 22)

c1.eats_at
c1.meow

c2.eats_at
c2.meow
