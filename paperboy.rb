class Paperboy

attr_reader :earnings

def initialize(name, experience = 0, side)# set initial value for experience
      @name = name
      @experience = experience
      @side = side
      @earnings = 0
end

def quota
  (50 + @experience/2)#minimum = 50
end

def deliver(start_address, end_address)
  @papers_delivered = ((end_address-start_address)/2.0).round #rough calculation for odd even
# --- if elsif for earnings ----- note: it accumulates with each day of deliveries --
  if @papers_delivered == quota
    @earnings += (@papers_delivered * 0.25)
      # puts " 1st: #{@papers_delivered}" used to verify correct loop in test
  elsif @papers_delivered < quota
    @earnings += (@papers_delivered * 0.25) - 2.0
      # puts " 2nd: #{@papers_delivered}" used to verify correct loop in test
  else @papers_delivered > quota
    @earnings += (50 * 0.25) + ((@papers_delivered - quota)* 0.5)
      # puts " 3rd: #{@papers_delivered}" used to verify correct loop in test
  end
  @experience += @papers_delivered #gives running total of @experience
end

  def report
    puts " I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end
end
tommy = Paperboy.new("Tommy", "even")

tommy.quota # => 50
tommy.deliver(101, 220) # => 17.75
tommy.earnings #=> 17.5
tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

tommy.quota # => 80
tommy.deliver(1, 150) # => 18.75
tommy.earnings #=> 34.25
tommy.report # => "I'm Tommy, I've been delivered 134 papers and I've earned $34.25 so far!"
