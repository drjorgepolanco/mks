# # # # # # #
# Problem 1 #
# # # # # # #

def toggle_oven(status)
  if status == true
    "The oven is now on" 
  else
    "The oven is now off"
  end
end

# # # # # # #
# Problem 2 #
# # # # # # #

def multiply(x, y)
  result = x * y
end

def give_me_seven
  multiply(7, 1)
end



module ClassesAndInstances

  # # # # # # # # # # # #
  # Classes/Instances 1 #
  # # # # # # # # # # # #
  class Animal
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end

  # # # # # # # # # # # #
  # Classes/Instances 2 #
  # # # # # # # # # # # #

  class Zoo
    attr_reader :animals
    def initialize
      @animals = []
    end

    def adopt(animal)
      @animals << animal
    end
  end

  # # # # # # # # # # # #
  # Classes/Instances 3 #
  # # # # # # # # # # # #
  class Plant
    attr_accessor :size
    # TODO: Fix incorrect use of local and instance variables
    def initialize(initial_size)
      @size = initial_size
    end

    def grow
      @size = size + 1
    end
  end
end



module GettersSetters

  # # # # # # # # # # #
  # Getters/Setters 1 #
  # # # # # # # # # # #
  class Box
    def initialize
      @secret = 50
    end
    # TODO: Write getter and setter methods for secret
    def secret
      @secret
    end

    def secret=(secret)
      @secret = secret
    end
  end

  # # # # # # # # # # #
  # Getters/Setters 2 #
  # # # # # # # # # # #
  class Person
    attr_reader :age
    attr_writer :secret
    attr_accessor :name

    def initialize(name, age)
      @name = name
      @age = age
    end
    # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
    # TODO: Refator the following to use attr_[reader|writer|accessible] shortcuts
    # NOTE: Don't provide any more access than necessary.
    #       For example, don't use attr_accessible when all you really need is attr_writer
    # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
    # def age
    #   @age
    # end

    # def secret=(value)
    #   @secret = value
    # end

    # def name
    #   @name
    # end

    # def name=(value)
    #   @name = value
    # end
  end
end



class ArrayProblems
  # # # # # # #
  # Arrays  1 #
  # # # # # # #

  def self.add_cake_to_array(array)
    array.push('cake')
  end

  # # # # # # #
  # Arrays  2 #
  # # # # # # #

  def self.uppercase_third_element(array)
    array[2].upcase!
  end

  # # # # # # #
  # Arrays  3 #
  # # # # # # #

  def self.iterate_and_print(array)
    array.each do |item|
      puts item
    end
  end

  # # # # # # #
  # Arrays  4 #
  # # # # # # #

  def self.select_higher(array, min)
    array.each do |item|
      puts item if item > min
    end
  end

  # # # # # # #
  # Arrays  5 #
  # # # # # # #

  def self.greet_everyone(people)
    people.map {|person| "Hello, " + person}
  end
end



class HashProblems
  # # # # # # #
  # Hashes  1 #
  # # # # # # #

  def self.create_empty_hash
    Hash.new
  end

  # # # # # # #
  # Hashes  2 #
  # # # # # # #

  def self.create_veggie_color_hash
    result = {
      :kale => "green",
      :tomato => "red"
    }
  end

  # # # # # # #
  # Hashes  3 #
  # # # # # # #

  def self.update_father_last_name(hash)
    hash["father"]["name"][:last] = "James XXX"
  end
end



class ArraysAndHashes
  # # # # # # # # # # #
  # Arrays & Hashes 1 #
  # # # # # # # # # # #

  def self.iterate_and_print(grocery_lists)
    # TODO: Iterate over this array and `puts` each key and value
    # Example: if array is [{ egg: 12 }, { milk: 1 }],
    #          then `puts` both "egg: 12" and "milk: 1"
    grocery_lists.each do |item|
      item.each do |key, value|
        puts "#{key}: #{value}"
      end
    end
  end
end