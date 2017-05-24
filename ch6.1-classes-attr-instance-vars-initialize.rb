  
# These notes cover videos 6.1 ... 6.6


# class names start with capital and are CamelCase 
  class TestClass
    # set a class variable, this will be the same across instances
    @@greeting = 'hello students'
    def get_greeting
      @@greeting
    end
    # instance variable @message is private to the class
    # and can only be retreived by get_message method defined below
    def set_message(m)
      @message = m
    end
    def get_message
      @message
    end
  end
  testClass = TestClass.new   # instanciate
  p testClass.get_greeting    # run a method with dot notation
  # NOTE all methods defined this way are public 
  # so how do we set a private method??????
  # http://jakeyesbeck.com/2016/01/24/ruby-private-class-methods/?utm_source=rubyweekly&utm_medium=email

# Example from the course
  class Animal
    def noise=(noise)
      @noise = noise
    end
    def noise
      @noise
    end
  end
  animal1 = Animal.new
  animal1.noise = "Moo!"
  puts animal1.noise
  # what is happening here is he is defining a method named 'noise='
  # and using rubys short hand to pass in an arg without parenthesis  
  # other people had issues with this chapter of the tutorial
  # http://stackoverflow.com/questions/8737421/trying-to-learn-understand-ruby-setter-and-getter-methods/8737448#8737448


# The 3 Attribute methods and what they are doing

  attr_reader :name
  #  same as
  def name
    @name
  end

  attr_writer :name
  # same as
  def name=(value)
    @name = value
  end

  attr_accessor :name
  # same as
  def name
    @name
  end
  def name=(value)
    @name = value
  end

# Example
  class Animal
    attr_accessor :name
    attr_writer :color
    attr_reader :legs, :arms
    def setup_dog
      @legs = 4
      @arms = 0
    end
  end
  animal1 = Animal.new
# testing the accessor
  animal1.name = "Steve"
  p animal1.name    # => 'Steve'
# testing the writer
  animal1.color = "black"
  p animal1.color   # this should kick an error as its not setup to read
# testing the read
  p animal1.legs
  animal1.setup_dog
  p animal1.legs




# Initialize Method and passing in args on init
  class Animal
    # can set defaults here   arms=0
    def initialize(legs, arms, name)
      @name = name
      @legs = legs
      @arms = arms
      p "runnining init "+@legs.to_s
    end
    attr_reader :legs, :arms, :name
  end
  # as per usual, must have correct num of args
  animal1 = Animal.new(4,0,"Steve")
  p animal1.name.to_s + " " + animal1.legs.to_s
  p "#{animal1.name} has #{animal1.legs} legs"



