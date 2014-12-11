require 'time'

module Exercises
  def self.ex0(str)
    str == "whishes" ? 'nope' : str * 3
  end

  # returns the number of elements in an array
  def self.ex1(array)
    return array.size
  end

  # returns the second element of an array
  def self.ex2(array)
    array.first.next
  end

  # returns the sum of the given array of numbers
  def self.ex3(array)
    array.reduce(:+) #                => Option A

    # array.inject {|sum, x| sum + x} => Option B

    # 0 instead of nil if array empty
    # array.inject(0, :+)             => Option C

    # sum only numbers & convert to integer strings of numbers
    # array.map(&:to_i).reduce(:+)    => Option D
  end

  # Returns the max number of the given array
  def self.ex4(array)
    array.max
  end

  # Iterates through an array and `puts` each element
  def self.ex5(array)
    array.each {|x| puts x}
  end

  #  Updates the last item in the array to 'panda'
  #  If the last item is already 'panda', update to 'GODZILLA'
  def self.ex6(array)
    array[-1] == 'panda' ? array[-1] = 'GODZILLA' : array[-1] = 'panda'
  end

  # If `str` exists in array, add it to the end of array
  def self.ex7(array, str)
    if array.include? str
      array << str
    end
  end

  # `people` is an array of hashes.
  # Iterate through `people` and print out their name and occupation.
  def self.ex8(people)
    people.each do |item|
      values = item.values
      puts "The #{values.pop} is #{values.shift}"
    end
  end

  # leap year ? true : false
  def self.ex9(time)
    if time.year % 4 != 0
      false
    elsif time.year % 100 != 0
      true
    elsif time.year % 400 != 0
      false
    else
      true
    end
  end

  # between 4 & 6pm ? "happy hour" : "normal prices"
  def self.ex10(time)
    time = Time.now
    if time.hour >= 16 && time.hour < 18
      'happy hour'
      true
    else
      'normal prices'
      false
    end
  end
  
  # Returns the sum of two numbers if they are both integers
  # Raises an error if both numbers are not integers
  def self.ex11(x, y)
    if x.class == Fixnum && y.class == Fixnum
      x + y
    else
      raise "An error has occurred"
    end
  end
  
  # Write a method that takes two characters and returns an
  # ordered array with all characters need to fill the range
  def self.ex12(x, y)
    array = []
    while x != y do
      array << x
      x = x.next
    end
    array << y
    array
  end
end

module Extensions
  # Extension Exercise
  #  - Takes an `array` of strings. Returns a hash with two keys:
  #    :most => the string(s) that occures the most # of times as its value.
  #    :least => the string(s) that occures the least # of times as its value.
  #  - If any tie for most or least, return an array of the tying strings.
  #
  # Example:
  #   result = Extensions.extremes(['x', 'x', 'y', 'z'])
  #   expect(result).to eq({ :most => 'x', :least => ['y', 'z'] })
  #
  def self.extremes(array)
    # TODO
  end
end