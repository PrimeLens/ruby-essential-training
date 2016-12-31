# Everything is an object (just like javascript)

# VARIABLES
# must use lowercase words with underscores 
# (because if first letter is CAPS then it makes it a constant not a var)
# no need for 'var' at the front, no camelCase, no hypehens, no semicolons
  first_var
  activity_counter
  student_array
  first_var = 10

# variables names determine the scope of the variable
  student         # block level scope
  student         # local level scope
  @student        # instance level scope
  @@student       # class level scope
  $env            # global




# OPERATORS (are pretty standard +,-,/,*, +=, +-)
  4 ** 2 # ==> 16  how we write exponential 

# INTEGERS are either Fixnum or Bignum, ruby switched back and forth as needed 
  1234.class # => Fixnum
  123456789123456789.class #=> Bignum
  200.next # => 201
# IMPORTANT
  10 / 3 # => 3  it truncates because neither operand is a float

# FLOATS have methods
  1234.567.class # => Float
  10.0.class # => Float even though its .0 aka integer
  1234.567.round # => 1235 rounds up and this result is a Fixnum
  1234.567.to_i # same as floor
  1234.567.floor
  1234.567.ceil

# STRINGS
  "hello" + ' world'  # both quotes are fine but single quote treats backslash as literal backslash
  "\n"                # => newline
  '\n'                # => \n   
  "gabba" * 5 # => "gabbagabbagabbagabbagabba"
  "You have #{counter} items"     # double quotes acts as string template
                  # note that counter wil convert to a string if its a number

  "attack".capitalize     # upcase the first letter only
  "attack".upcase
  "attack".downcase
  "attack".reverse 
  "attack".length

# ARRAYS 
  data_set = ["a", "b", "c"]
  data_set << "f"           # will append f
  data_set.inspect          # returns a human readable string but not JSON
  data_set.join(',')        # makes string with comma separators
  "1,2,3".split(',')        # convert string to array
  [3,2,1,2,3].sort          # returns sorted => [1, 2, 2, 3, 3]
  [3,2,1,2,3].uniq          # returns array of uniq  => [3, 2, 1]
  [3,2,1,2,3].uniq!         # original is altered and returned
  [3,2,1,2,3].delete_at(2)  # removes 3rd element and splices so no gap
  [3,2,1,2,3].delete(2)     # searches for all elements with value of 2 and removes them
  data_set.push('end')
  data_set.pop()
  data_set.shift()
  data_set.unshift('start')
  [1,2,3] + [4,5,6]         # => [1,2,3,4,5,6]    can use + - * /

# HASHES, key value pairs, aka object
  hero = { "first_name" => "Rick", "last_name" => "Deckard" }
  hero["gender"] = "M"    
  hero.index("Rick")        # will return the key for that value # => "first_name"
  # NOTE just like ES6 the key can be an array
  hero.keys                 # gives array of keys
  hero.values               # gives array of values
  hero.length 
  hero.size                 # same as length
  hero.to_a                 # converts to array of arrays 
                            # [ ["key" => "value"], ["key" => "value"] ]
  # NOTE no dot syntax

# SYMBOLS
  :test   
  # this is like setting a constant label, it will always use the same piece of memory
  # useful for keys in a hash
  # think of it like a permanent pointer

# BOOLEAN and logic operatos
  # logic operators   ==  <   >   <=  >=  !   !=  &&  ||
  # methods that return boolean
  x == nill
  x.nil?                      # => true
  x == 2
  x.between?(0,5)             # => true
  [1,2,3].empty?              # => false
  [].empty?                   # => true
  [1,2,3].include?(2)         # => true
  {"a" => 1}.has_key?("a")    # => true
  {"a" => 1}.has_value?(3)    # => false

# RANGE   Incluseive Range and Exclusvie Range
  x = 1..10           # range 1 to 10 includeing 1 and 10
  y = 1...10          # does not include 10
  x.last              # 10
  y.last              # 10
  x.include?(10)      # true
  y.include?(10)      # false

  # to expand out a range use the spalt 
  [*x]                # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  [*(1...10)]         # [1, 2, 3, 4, 5, 6, 7, 8, 9]

  str = "a".."e"
  str.include?("d")   # true
  [*str]              # ["a", "b", "c", "d", "e"]

# CONSTANTS
  MYCONSTANT = 10     # ruby tends to have constants all in caps
  Myconstant = 10     # but even the first letter is enough to make it a constant
  # can be reassigned but ruby will kick a warning

  
             