module GettersSetters
  class Doctor
    attr_reader :skill

    def initialize
      @skill = "bedside manners"
    end

    def skill=(skill)
      @skill = skill
    end
  end
end


class HashProblems
  def self.update_top_compartment_item(wardrobe_hash)
    wardrobe_hash["top compartment"][:item] = "fake beard"
  end
end


class ArrayProblems

  def self.add_cat_to_array(array)
    array.push({:cat => 'Pogo'})
  end

  def self.list_wardrobe_item_sizes(array)
    array.map {|x| x[:size]}
  end

  def self.tell_me_the_weather(array)
    array.map {|x| "It is #{x}"}
  end

  def self.list_my_hats(array)
    array.map {|x| "#{x[:size]} #{x[:style]}"}
  end
end


class MethodReturns
  def self.include?(array, item)
    array.include?(item) ? true : false
  end

  def self.get_name
    "Bob"
  end
end


module Scopes
  class Person
    def jump(height)
      @jump_height = height
      "I can jump #{@jump_height} inches!"
    end

    def last_jump_height
      "I last jumped #{@jump_height} inches."
    end
  end

  class Finder
    def initialize(people)
      @people = people
    end

    def find_first(salary)
      @found = nil
      @people.each do |person|
        if person[:salary] == salary
          @found = person
        end
      end
      @found
    end
  end
end