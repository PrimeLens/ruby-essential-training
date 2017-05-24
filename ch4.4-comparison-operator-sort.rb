
# Comparison operator <=> aka spaceship operator
  # returns -1 or 0 or 1
  1 <=> 2     # -1    swap places to left
  2 <=> 2     # 0     no change
  3 <=> 2     # 1     swap places to right


# sort with <=>
  [3,1,5,2,4].sort                        # [1,2,3,4,5]
  [3,1,5,2,4].sort { |v1,v2| v1 <=> v2 }  # [1,2,3,4,5]

  [3,1,5,2,4].sort { |v1,v2| v2 <=> v1 }  # [5,4,3,2,1]
  [3,1,5,2,4].sort.reverse                # [5,4,3,2,1]

  fruits = ['banana', 'apple', 'pear', 'orange']
  fruits.sort         # default is alphabetically # ["apple", "banana", "orange", "pear"]
  fruits.sort { |f1,f2| f1.length <=> f2.length}  # ["pear", "apple", "banana", "orange"]
  # remember you can still write it like this too
  fruits.sort do 
    |f1,f2| 
    f1.length <=> f2.length
  end

# sort_by
  fruits.sort_by { |f1| f1.length }       # sorts by length

# to alter the original use !
  arr = [3,1,5,2,4]
  arr.sort! { |v1,v2| v1 <=> v2 }
  p arr   # [1, 2, 3, 4, 5]  p is same as puts but all on one line


# hash sort
  # it converts it to an array
  # same as using hash.to_a (which converts it to an array)
  {"b"=>33, "a"=>55, "c"=>22}.to_a                                # [["b", 33], ["a", 55], ["c", 22]]
  # just remember each value is an array when it gets passed to the transformer code block
  {"b"=>33, "a"=>55, "c"=>22}.sort { |v1, v2| v1[0] <=> v2[0] }   # [["a", 55], ["b", 33], ["c", 22]]