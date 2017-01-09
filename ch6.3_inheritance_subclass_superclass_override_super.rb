# These notes cover videos 6.10 ... 6.12

  # WOW! - the best thing about Ruby that I have seen is that
  # there is only one level of inheritance allowed


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



# Subclass overriding parent method
  class Animal
    def set_color(color)
      @color = color
    end
    def describe_animal
      p "My color is #{@color}."
    end
  end
  class Cow < Animal
    def describe_animal
      p "The cows color is #{@color}."  # change the start of the sentence
    end    
  end
  maise = Cow.new
  maise.describe_animal                 # The cows color is .
  maise.set_color('blue')
  maise.describe_animal                 # The cows color is blue.
  # NOTE : we can open the class and override the method again!
  # and this will not affect other methods or the variable values in the instance
  class Cow
    def describe_animal
      p "OMG my color is #{@color}."   # override again without affecting @color values
    end
  end      
  maise.describe_animal                 # OMG my color is blue.


# Calling super
  class Animal
    def describe
      "My Animal has "
    end
  end
  class Cow < Animal
    def initialize
      @arms = 0
    end
    def describe
      str = super       # run the parents method, save the returned value
      str + "#{@arms} arms."
    end    
  end
  maise = Cow.new
  p maise.describe      # My Animal has 0 arms.





