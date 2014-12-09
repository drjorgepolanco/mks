class CarStats

  def self.calc_top_color(cars)
  	top = Hash.new (0)
  	cars.each { |car| top[car.color] += 1 }
  	top.sort_by { |color, count| count }.last.first
	end




  ######################
  # POP & SHIFT OPTION #
  ######################

  # def self.calc_top_color(cars)
  #   car_colors = car_colors_array(cars)
  #   car_colors.sort_by {|color| car_colors.count(color)}.pop
  # end

  # def self.car_colors_array(cars)
  #   cars.map {|car| car.color}
  # end

  # def self.calc_bottom_color(cars)
  #   car_colors = car_colors_array(cars)
  #   car_colors.sort_by {|color| car_colors.count(color)}.shift
  # end
end