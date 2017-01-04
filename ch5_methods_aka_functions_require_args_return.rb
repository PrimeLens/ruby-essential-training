  
# methods / stand alone functions
  # in Ruby a standalone function is called a method
  # possibly it referes to a method of the namespace??
  # define method like this
  # you dont need parenthesis if no args
  def do_stuff
    p 'Hi Rick'
  end
  # can have ?  character in the name
  def my_test?
  end
  # the method name can be accessed within its code block for recursion



# variable scopes from ch2 for reference
  student         # block level scope
  student         # local level scope
  @student        # instance level scope
  @@student       # class level scope
  $env            # global

  # no inheritance of block and local scoped vars
  def school
    teacher = 'Mary'
    @student = 'Bobby'
    def lesson
      p @student    # can access instance level var
      p teacher     # ERROR cannot access local var
    end
    lesson
  end
  school



# passing in args, 
  # parenthesis are optional
  # num of args must match unless value default is set up
  def do_stuff(x, y)
    p x
    p y
  end
  do_stuff('a')       # ERROR called with wrong number of args
  do_stuff('a', 'b')  # correct
  do_stuff 'a', 'b'   # correct
  do_stuff 'a' 'b'    # ERROR multi args need the comma
  do_stuff('a')       # ERROR called with wrong number of args
  # default args
  def do_stuff(x=5, y=5)
    p x
    p y
  end  
  do_stuff('a')       # now it works



# return values
  # return value will default to the return value of the last statement
  def do_stuff
    1 + 1
  end
  do_stuff            # 2
  # using the keyword return will exit the method (like other langs)
  def do_stuff
    return 1 + 1      
    puts 'hello'      # this line will never run
  end


# returning multiple values, array has no need for square brackets  
  def do_stuff
    return 'hello', 'goodbye'   # square brackets are missing, this is valid and returns an array
  end
  # also in assignment the square brackets are not needed
  str1, str2 = do_stuff
  str1                # 'hello'   



# note OPERATORS are methods 

  8 + 2
  # is short for
  8.+(2)

  arr = []
  arr << 4            # append 4 to array
  # is short for
  arr.<<(4)

  arr = []
  arr[2] = 'hello world'
  # is short for
  arr.[]=(2,'hello world')


# require
  require "my_methods.rb"
  # one file can require another


