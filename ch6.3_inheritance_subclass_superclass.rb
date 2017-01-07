# These notes cover videos 6.10 ... 6.12

  # WOW! - the best thing about Ruby that I have seen is that t
  # here is only one level of inheritance allowed


# Inheritance 
  class Animal
    attr_reader :legs, :arms
    attr_accessor :color
    def initialize(legs=0, arms=0, color="black")
      @color = color
      @legs = legs
      @arms = arms
    end
  end
  
  # create subclass Cow that inherits from 
  class Cow < Animal
    def initialize(color="brown")
      @color = color
      @legs = 4
      @arms = 0
    end
  end
  maise = Cow.new
  p maise.color
  p maise.legs
  p maise.arms

  # get the type of class this is an istance of
  p maise.class


# WIP
# next video subclass overriding
# next video accessing the superclass