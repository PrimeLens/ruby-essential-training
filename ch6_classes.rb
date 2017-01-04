  
# class names start with capital and are CamelCase 
  class TestClass
    @@greeting = 'hello students'  # set a class variable
    def get_greeting
      @@greeting
    end
    # instance var @message is private to the class
    def set_message(m)
      @message = m
    end
    def get_message
      @message
    end
  end

  testClass = TestClass.new   # instanciate
  p testClass.get_greeting    # run a method with dot notation

  # ---> so how do we set a private method?
  # http://jakeyesbeck.com/2016/01/24/ruby-private-class-methods/?utm_source=rubyweekly&utm_medium=email


# Example from the course
  # what is happening here is he is defining a method named 'noise='
  # and using rubys short hand to pass in an arg without parenthesis
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

  animal2 = Animal.new
  animal2.noise = "Quack!"
  puts animal2.noise

# other people had issues with this chapter of the tutorial
# http://stackoverflow.com/questions/8737421/trying-to-learn-understand-ruby-setter-and-getter-methods/8737448#8737448


#  WORK IN PROGRESS
