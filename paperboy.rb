class Paperboy

attr_reader :earnings

def initialize(name, experience = 0, side)
      @name = name
      @experience = experience
      @side = side
      @earnings=0
end

def quota
  (50 + @experience/2)
end

def deliver(start_address, end_address)

  @papers_delivered = ((end_address-start_address)/2.0).round

  #-------- added this to deliver method --------
  if @papers_delivered == quota
    @earnings += (@papers_delivered * 0.25)
      puts " 1st: #{@papers_delivered}"
  elsif @papers_delivered < quota
    @earnings += (@papers_delivered * 0.25) - 2.0
      puts " 2nd: #{@papers_delivered}"
  else @papers_delivered > quota
    @earnings += (50 * 0.25) + ((@papers_delivered - quota)* 0.5)
      puts " 3rd: #{@papers_delivered}"

  end
  #--------------------------------
  @experience += @papers_delivered

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
tommy.earnings #=> 36.25
tommy.report # => "I'm Tommy, I've been delivered 134 papers and I've earned $36.25 so far!"
