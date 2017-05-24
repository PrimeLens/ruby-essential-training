# find
  # .find and .detect are the same
  # .find returns a Number and .find_all returns an array
  (1..10).find { |e| e % 3 == 0 }       # 3
  (1..10).detect { |e| e % 3 == 0 }     # same as .find

# IMPORTANT so is the code block returning a boolean value? 
# No according to my research its the .collect method not the block
  [1, 2, 3, 4, 5].collect { |number| number + 1 }
# Quote: The resulting array is returned by the method collect
# In other words, the method collect uses the block as a transformer.
# --->  http://ruby-for-beginners.rubymonstas.org/blocks/return_values.html


# .include with .find
  # returns a boolean
  (1..10).include?(3)                   # true
  (1..10).find { |e| 
    (1..10).include?(e * 3)             # is iterator *3 within 1..10?
  }

# .find_all
  # .find_all and .select are the same
  (1..10).find_all { |e| e % 3 == 0 }   # [3, 6, 9]
  (1..10).select { |e| e % 3 == 0 }     # [3, 6, 9]
                      
# .any? .all?
  # returns boolean
  # is there a number in this range that is divisible by 3 ?
  (1..10).any? { |e|
    e % 3 == 0                          # returns true when e == 3                   
  }
  # are all the numbers in this range divisible by 3 ?
  (1..10).all? { |e|
    e % 3 == 0                          # returns false as soon as e == 1            
  }
  
# .delete_if
  # will not work on range but will work on array
  [1,2,3,4,5,6,7,8,9,10].delete_if { |e| 
    e % 3 == 0              
  }
  # removes 3, 6 and 9
  # returns [1, 2, 4, 5, 7, 8, 10]






  
