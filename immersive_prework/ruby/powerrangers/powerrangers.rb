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
			puts "#{name} gives a SuperPowerPunch to #{victim.name}: KaaBOOM!!"
			@caffeine_level -= (@caffeine_level / 5)
			victim.scream
			victim.run
		elsif power > 3
			puts "#{name} gives a PowerPunch to #{victim.name}: BOoOm!"
			@caffeine_level -= (@caffeine_level / 5)
			victim.scream
		elsif power > 0
			puts "#{name} gives a Punch to #{victim.name}: Pum!"
			@caffeine_level -= (@caffeine_level / 5)
			puts "#{victim.name} says: Ouch!"
		else
			puts "I can kiss you dooode, but no strength to punch..."
		end
	end

	def rest(nap_time)
		puts "#{@name} says: Ohhh, I need to rest..... ZzZzzZzz"
		@caffeine_level += nap_time
		puts "#{@name}'s caffeine level is now #{@caffeine_level}"
	end

	def use_megazord(victim)
		punch(victim, 5000)
		@caffeine_level -= (@caffeine_level / 2)
	end 
end


class EvilNinja < Person
	def initialize(name, strength, evilness)
		super(name)
		@strength = strength
		@evilness = evilness
	end

	def punch(victim, power = @strength)
		if power > 6
			puts "#{name} gives a SuperPowerPunch to #{victim.name}: KaaBOOM!!"
			@caffeine_level -= (@caffeine_level / 5)
			victim.scream
			victim.run
		elsif power > 3
			puts "#{name} gives a PowerPunch to #{victim.name}: BOoOm!"
			@caffeine_level -= (@caffeine_level / 5)
			victim.scream
		elsif power > 0
			puts "#{name} gives a Punch to #{victim.name}: Pum!"
			@caffeine_level -= (@caffeine_level / 5)
			puts "#{victim.name} says: Ouch!"
		else
			puts "I can kiss you dooode, but no strength to punch..."
		end
	end

	def cause_mayhem(victim)
		victim.caffeine_level = 0
		puts "#{name} cause MAYHEM!!!! to #{victim.name}."
		puts "#{victim.name} is now screwed. He can't fight anymore. His caffeine level is #{victim.caffeine_level}"
	end
end



def fight_scene
	jason = PowerRanger.new("Jason", 8, "red")
	kimberly = PowerRanger.new("Kimberly", 5, "pink")

	rita = EvilNinja.new("Rita Repulsa", 8, 10)
	goldar = EvilNinja.new("Goldar", 7, 9)

	jorge = Person.new("Jorge")
	massiel = Person.new("Massiel")

	jorge.drink_coffee(3)
	massiel.run

	jason.punch(rita, 3)
	rita.cause_mayhem(jason)
	jason.rest(10)
	jason.punch(rita, 7)
	
	goldar.punch(kimberly, 4)
	kimberly.use_megazord(goldar)
end

fight_scene






