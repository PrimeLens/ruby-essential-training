
# Another good link    https://learnrubythehardway.org/book/ex40.html 

# Modules for Namespacing
  # Exampke 1.  The example in the video
  module Romantic
    class Date
      attr_accessor :d      
      def date=(d)
        @d = d
      end      
    end
  end
  dinner = Romantic::Date.new
  dinner.date = Date.new

  # Example 2.  How do we tell Sue Davis and Sue Smith apart? By their last names. The last name is like the namespace
  module Smith
    class Sue
      def greet
        p 'hi from Sue Smith'
      end
    end
    class Bob
      def greet
        p 'hi from Bob Smith'
      end
    end
  end





# Include    aka modules for mixins  (aka mix-in aka mix in)
  # Example from the video
  module ContactInfo
    attr_accessor :first_name, :last_name, :cellphone
    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end
  end

  class Teacher
    # here we include the module and all its contents
    include ContactInfo
  end
  teacher = Teacher.new('Fred', 'Smith')
  p teacher.first_name




# Require
  # require returns a boolean, not the module
  require('./ch7_example_library')
  class Teacher
    include ContactInfo
  end
  teacher = Teacher.new('Fred', 'Smith')
  p teacher.first_name










