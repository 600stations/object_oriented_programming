class PaperBoy
   def initialize(name, experience, side)
      @name = name
      @experience= experience
      @side = side
      attr_reader :earnings
   end

def quota
  MINIMUM=50
  quota = (MINIMUM + @experience/2)
end

def deliver(start_address, end_address)# do I need to make these instance variables
  experience_sum = 0#check experience_sum or just experience
  papers_delivered = (end_address-start_address)
end

def report
  puts " I'm #{@name}, I've delivered #{@experience} and I've earned #{@earnings} so far!"
end

tommy = Paperboy.new("Tommy", "even")

tommy.quota # => 50
tommy.deliver(101, 220) # => 17.75
tommy.earnings #=> 17.5
tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

tommy.quota # => 80
tommy.deliver(1, 150) # => 18.75
tommy.earnings #=> 36.25
tommy.report # => "I'm Tommy, I've been delivered 134 papers and I've earned $36.25 so far!"
