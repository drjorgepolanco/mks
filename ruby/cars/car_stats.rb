class CarStats

	################
  # FIRST & LAST #
  ################

	# def self.all_colors(cars)
	# 	@popular_cars = Hash.new(0)
	# 	cars.each { |car| @popular_cars[car.color] += 1 }
	# end

 	# def self.most_popular_color(cars)
 	#  	self.all_colors(cars)
 	#  	@popular_cars.sort_by { |color, count| count }.last.first
	# end

	# def self.least_popular_color(cars)
	# 	self.all_colors(cars)
	# 	@popular_cars.sort_by { |color, count| count }.first.first
	# end


  ###############
  # POP & SHIFT #
  ###############

  # def self.most_popular_color(cars)
  #   car_colors = cars.map {|car| car.color}
  #   car_colors.sort_by {|color| car_colors.count(color)}.pop
  # end

  # def self.least_popular_color(cars)
  #   car_colors = cars.map {|car| car.color}
  #   car_colors.sort_by {|color| car_colors.count(color)}.shift
  # end


  #############
  # MAX & MIN #
  #############

  def self.all_colors(cars)
  	@count = cars.inject(Hash.new(0)) do |color, car| 
      color[car.color] += 1
      color
    end
  end

  def self.most_popular_color(cars)
    self.all_colors(cars)
    @count.max_by {|k, v| v}.first
  end

  def self.least_popular_color(cars)
  	self.all_colors(cars)
    @count.min_by {|k, v| v}.first
  end
end