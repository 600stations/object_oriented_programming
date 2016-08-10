class PaperBoy
   def initialize(name, experience, side, earnings)#make earnings read only
      @name = name
      @experience= experience
      @side = side
      @earnings = earnings#make earnings read only
   end

def quota
  MINIMUM=0
  quota = (MINIMUM + @experience/2)
end

def deliver(start_address, end_address)# do I need to make these instance variables
  experience_sum = 0#check experience_sum or just experience
  papers_delivered = (end_address-start_address)
end

def report
  puts " I'm #{@name}, I've delivered #{@experience} and I've earned #{@earnings} so far!"
end

p1 = Paperboy.new("Tommy", "even")
p1.quota # => 50
p1.deliver(101, 220) # => 17.75
p1.earnings #=> 17.5
p1.report

p2 = Paperboy.new("Bob", "odd")
p2.quota # =>
p2.deliver(101, 220) # =>
p2.earnings #=>
p2.report
