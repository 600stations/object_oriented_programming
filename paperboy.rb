# MINIMUM = 50
class Paperboy

attr_reader :earnings

def initialize(name, experience = 0, side)
      @name = name
      @experience = experience
      @side = side
end

def deliver(start_address, end_address)# do I need to make these instance variables
  #check experience_sum or just experience
  @papers_delivered = (end_address-start_address)/2
  @experience += @papers_delivered
end

def quota
  puts "My quota is #{(50 + @experience/2)}"
end

def earnings
  if @papers_delivered == 50
    @earnings = (@papers_delivered * 0.25)
  elsif @papers_delivered < 50
    @earnings = (@papers_delivered * 0.25) - 2.0
  else
    @earnings = (50 * 0.25) + ((@papers_delivered - 50)* 0.5)
  end
end



def report
  puts " I'm #{@name}, I've delivered #{@experience} and I've earned #{@earnings} so far!"
end
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
