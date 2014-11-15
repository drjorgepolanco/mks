require_relative 'cars_app'


car_1 = Car.new("blue")
car_2 = Car.new("red")
car_3 = Car.new("blue")
car_4 = Car.new("white")
car_5 = Car.new("yellow")
car_6 = Car.new("blue")
car_7 = Car.new("red")
car_8 = Car.new("black")
car_9 = Car.new("yellow")
car_10 = Car.new("black")


puts Car.total_car_count
Car.show_cars
puts Car.most_popular_color


car_3.color = "black"
car_5.color = "blue"
Car.show_cars
puts Car.most_popular_color


car_x = Convertible.new("red")
car_y = Convertible.new("yellow")

puts "The roof is currently " + car_x.roof_status + "."

car_x.top_up

puts "The roof is currently " + car_x.roof_status + "."

car_x.top_down
car_x.top_down


car_a = Car.new()
car_b = Car.new()

car_a.drive(150)
car_b.drive(77)
puts car_a
puts car_b

car_a.fuel_up
car_a.fuel
