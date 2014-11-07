# Pet
# ***

# Pet = Class.new do
# 	def speak(noise)
# 		puts "The dog says #{noise}."
# 	end

# 	def run(speed)
# 		puts "The dog runs " + speed + "."
# 	end

# 	def cry(level)
# 		puts "The dog cries #{level}." 
# 	end
# end

# user_noise = puts "What kind of noise do you want the dog to make?"
# user_noise = gets.chomp

# dog = Pet.new

# dog.speak(user_noise)
# dog.run("fast")
# dog.cry("loud")




# Person
# ******

# class Person
# 	def data(name, age)
# 		@name = name
# 		@age = age
# 	end

# 	def interest(action, lazy)
# 		puts "#{@name}, who is #{@age} years old, likes #{action} when he is feeling active and #{lazy} when he is feeling quiet."
# 	end
# end


# juan = Person.new
# juan.data("Juan", 30).interest("parachuting", "reading")




# Marker
# ******

# class Marker
# 	def set_color(my_color)
# 		@color = my_color
# 	end

# 	def write
# 		puts "I am writing with a #{@color} marker!"
# 	end
# end

# red_marker = Marker.new
# green_marker = Marker.new
# red_marker.set_color("red")
# green_marker.set_color("green")
# red_marker.write
# green_marker.write



# Using 'send'
# ************

# 5 * 5
5.send(:*, 5)

# "omg".upcase
"omg".send(:upcase)

# ['a', 'b', 'c'].at(1)
['a', 'b', 'c'].send(:at, 1)

# ['a', 'b', 'c'].insert(2, 'o', 'h', 'n', 'o')
['a', 'b', 'c'].send(:insert, 2, 'o', 'h', 'n', 'o')

# {}.size
{}.send(:size)

# {character: "Mario"}.has_key?(:character)
{character: "Mario"}.send(:has_key?, :character)


# NOT Using 'send'
# ****************

# 6.send(:-, 32)
6 - 32

# {html: true, json: false}.send(:keys)
{html: true, json: false}.keys

# "MakerSquare".send(:*, 6)
"MakerSquare" * 6

# "MakerSquare".send(:split, 'a')
"MakerSquare".split('a')

# ['alpha', 'beta'].send(:[], 3)
['alpha', 'beta'].[](3)














