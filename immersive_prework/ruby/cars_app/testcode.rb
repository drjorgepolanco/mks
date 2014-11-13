require_relative 'cars_app'


car_1 = Car.new("blue")
car_2 = Car.new("red")
car_3 = Car.new("blue")
car_4 = Car.new("yellow")

Car.show_cars

car_3.color = "black"
puts car_3.color

Car.show_cars

car_5 = Car.new("black")

puts Car.show_cars

puts Car.most_popular_color


car_x = Convertible.new("red")
car_y = Convertible.new("yellow")

puts car_x.roof_status

car_x.roof_status = "open"

puts car_x.roof_status

car_x.top_down
car_x.top_down


# car_a = Car.new()
# car_b = Car.new()
# puts car_a
# puts car_b
# car_a.drive(10)
# puts car_a
# puts car_b
# car_a.drive(232)exit
# car_b.drive(117)
# puts car_a
# puts car_b




# load 'testcode.rb'