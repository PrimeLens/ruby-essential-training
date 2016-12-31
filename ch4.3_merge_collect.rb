# merge
  # for hashes only

  h1 = { "a" => 111, "b" => 222 }
  h2 = { "z" => 999, "b" => 333 }
  h1.merge(h2)    # for conflicting key "b" the h2 value wins
          # this will not change h1
  h1.merge!(h2)   # this WILL change h1 as well as return the new hash

# use a code block to determine outcome of conflicting keys
  h1.merge(h2) { 
    |conflicting_key, h1_value, h2_value|   # pass in the conflicting key, the h1 value and the h2 value
    puts conflicting_key
    puts h1_value
    puts h2_value
    if h1_value > h2_value                  # use higher value
      h1_value                            
    else
      h2_value
    end
  }




# collect as a method of an array
  # aka .map

  new_array = [1, 2, 3].collect { |e| e + 1 }                     # [2, 3, 4]
  new_array = [1, 2, 3].map { |e| e + 1 }                         # map is the same
  new_array = ["apple", "banana"].collect { |e| e.capitalize }    # ["Apple", "Banana"]

  new_array = [1, 2, 3].collect { |e| e + 1 if e == 2 }           # [nil, 3, nil]
  # why the nil?
  # because there is not else

# collect as a method of a range
  (1..3).collect { |e| e + 1 }                                    # [2, 3, 4]
  # always returns an Array

# collect as a method of a hash
  { "a" => 1, "b" => 2 }.collect{ |key, val| key }                # ["a", "b"]
  { "a" => 1, "b" => 2 }.collect{ |key, val| val * 10 }           # [10, 20]
  { "a" => 1, "b" => 2 }.collect{ |key, val| key+": "+val.to_s }  # ["a: 1", "b: 2"]
  { "a" => 1, "b" => 2 }.collect{ |key, val| "#{key}: #{val}" }   # same thing useing a string template

