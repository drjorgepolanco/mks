class Person
	attr_reader :name
	attr_accessor :caffeine_level
	def initialize(name)
		@name = name
		@caffeine_level = 5.0
	end

	def run
		if @caffeine_level > 6
			puts "#{@name} runs fast like a gazelle!"
			@caffeine_level -= (@caffeine_level / 3)
		elsif @caffeine_level > 3
			puts "#{@name} runs as fast as possible!"
			@caffeine_level -= (@caffeine_level / 3)
		elsif @caffeine_level > 0
			puts "#{@name} barely runs, oohh Loord!!"
			@caffeine_level -= (@caffeine_level / 3)
		else
			puts "#{@name} whispers: I'm dead, dooode!"
		end
	end

	def scream
		puts "#{@name} yells 'Aaaaaarrggg!!!!!!!!!!!!'"
	end

	def drink_coffee(coffee_shot = 1)
		@caffeine_level += coffee_shot
		puts "#{@name}'s caffeine_level is now #{@caffeine_level}"
	end
end

class PowerRanger < Person

	def initialize(name, strength, color)
		super(name)
		@strength = strength
		@color = color
	end

	def punch(victim, power = @strength)
		if power > 6
			puts "SuperPowerPunch: KaaBOOM!!"
			@caffeine_level -= (@caffeine_level / 5)
			victim.scream
		elsif power > 3
			puts "PowerPunch: BOoOm!"
			@caffeine_level -= (@caffeine_level / 5)
		elsif power > 0
			puts "Punch: Pum!"
			@caffeine_level -= (@caffeine_level / 5)
		else
			puts "I can kiss you dooode, but no strength to punch..."
		end
	end

	def rest(nap_time)
		puts "Ohhh, I need this... ZzZzzZzz"
		@caffeine_level += nap_time
		puts "#{@name}'s caffeine level is now #{@caffeine_level}"
	end

	def use_megazord(victim, 5000)
		@caffeine_level -= (@caffeine_level/2)
	end 

end

class EvilNinja < Person
	def initialize(strength, evilness)
		@strength = strength
		@evilness = evilness
	end

	def punch
	end

	def cause_mayhem(victim)
		victim.caffeine_level = 0
	end
end






