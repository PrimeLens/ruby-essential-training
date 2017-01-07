# These notes cover videos 6.7 ... 6.9


# Class Methods 
  # are mthods that exist on the class even when you don't have an instance.  
  # for example Animal.new
  # write your own using self. prefix
  class Animal
    def self.list_all_species
      ['cat','dog','duck','horse']
    end
  end
  p Animal.list_all_species

  # Example from course.  A class method that returns an instance of itself
  class Animal
    attr_accessor :legs, :arms, :color
    def initialize(legs=0, arms=0, color="black")
      @name = color
      @legs = legs
      @arms = arms
    end
    def self.make_instance(legs=0, arms=0)
      animal = self.new(legs, arms)
      # its ok to refer to the class name inside itself too
      # animal = Animal.new(legs, arms)
      animal.color = 'green'
      return animal
    end
  end
  test = Animal.make_instance
  p test.color




# Class scoped attributes Reader-Writer methods
  # no such thing as attr for class scoped @@ vars 
  # (but in Rails they have made cattr)
  class Animal
    @@species = []
    def self.species=(species)
      @@species = species
    end
    def self.species
      @@species
    end
  end
  Animal.species= ['platypus','ocelot']
  p Animal.species


# SPECIAL NOTE, additional research needed
  # I believe that the key word self when used in the class always refers to the Class
  # not the instance EXCEPT when it is used inside the initialize method
  # this could be useful for keeping track of the number of instances
  # this needs verification

