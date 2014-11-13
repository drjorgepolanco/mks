require_relative 'cars_app'

car_blue = Car.new("blue")
puts Car.total_car_count
puts car_blue.color

car_red = Car.new("red")
puts Car.total_car_count

car_blue_other = Car.new("blue")
puts Car.total_car_count

Car.show_cars
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