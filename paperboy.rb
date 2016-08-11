class PaperBoy
  #  def initialize(name, experience, side)
  #     @name = name
  #     @experience= experience
  #     @side = side
  #     attr_reader :earnings
  #  end
  attr_accessor :name
  attr_accessor :experience
  attr_accessor :side
  # attr_reader :earnings

def deliver(start_address, end_address)# do I need to make these instance variables
  @experience= 0#check experience_sum or just experience
  papers_delivered = (end_address-start_address)/2
  @experience = (@experience + papers_delivered)
end

def quota
  MINIMUM=50
  my_quota = (MINIMUM + @experience/2)
end

def earnings
  if papers_delivered == 50
    earnings = (papers_delivered * 0.25)
  elsif papers_delivered < 50
    earnings = (papers_delivered * 0.25) - 2.0
  else
    earnings = (50 * 0.25) + (papers_delivered)
  end
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
