class Reservation
	attr_reader :name, :time, :size
	def initialize(name, time, size)
		@name, @time, @size = name, time, size
	end

  def update_party_size(new_size)
    if new_size.is_a? Integer
      if new_size <= 0
        puts "You need at least one person to make a party."
      else
        puts "The new party size is #{new_size}."
        @size = new_size
      end
    else
      puts "Please, only use numbers to update party size."
    end
  end
end

class ReservationList
  def initialize
    @reservations = []
  end

  def add(reservation)
    if (reservation.size <= 0)
    	puts "You need to have at least one person to create a reservation."
      return false
    else
      @reservations << reservation
      return true
    end
  end

  def count
    puts "We have currently #{@reservations.count} reservations."
  end

  def display
  	puts "Our reservations are:"
  	@reservations.each do |reservation|
  		puts "- Reservation under \"#{reservation.name}\" at #{reservation.time} for #{reservation.size} people."
  	end
  end
end

reservations = ReservationList.new
reservations.add  Reservation.new("Cain", "2:00pm", 4)
reservations.add  Reservation.new("Dan", "11:00am", 2)
reservations.add  Reservation.new("Earl", "4:00pm", 5)
reservations.add  Reservation.new("lol", "9:00pm", -1)
#=> You need to have at least one person to create a reservation.

puts reservations.count 
#=> We have currently 3 reservations.

reservations.display
#=>
# Our reservations are:
# - Reservation under "Cain" at 2:00pm for 4 people.
# - Reservation under "Dan" at 11:00am for 2 people.
# - Reservation under "Earl" at 4:00pm for 5 people.

mike = Reservation.new("Mike", "10:00pm", 4)

mike.update_party_size("ten")
#=> Please, only use numbers to update party size.

puts mike.size
#=> 4

mike.update_party_size(10)
#=> The new party size is 10.

puts mike.size
#=> 10