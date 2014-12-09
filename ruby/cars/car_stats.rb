class CarStats

  def self.most_popular_color(cars)
  	most_popular = Hash.new(0)
  	cars.each { |car| most_popular[car.color] += 1 }
  	most_popular.sort_by { |color, count| count }.last.first
	end

	def self.least_popular_color(cars)
		least_popular = Hash.new(0)
		cars.each {|car| least_popular[car.color] += 1 }
		least_popular.sort_by { |color, count| count }.first.first
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