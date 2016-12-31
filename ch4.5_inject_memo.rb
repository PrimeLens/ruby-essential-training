

# inject
  # memo is the var we accumulate in, inject method returns memo
  # n is each number
  (1..10).inject { |memo, n| memo+n }           # 55, sum of 1..10
  # works on range or an array
  arr = [*1..10]                                # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  
  arr.inject { |memo, n| memo+n }               # 55, sum of 1..10
  # this will kick an ERROR because (memo+n if n!=3) will return nil at some stage
  arr.inject { |memo, n| memo+n if n!=3 }
  # however the following will work
  arr.inject { |memo, n| n==3 ? memo : memo+n}  # 52



# inject(arg)
  # the first value through BECOMES memo and is not added
  arr.inject { |memo, n| memo+n }               # 55
  # however if we inject(100) then 100 becomes initial memo
  arr.inject(100) { |memo, n| memo+n }          # 155

  # to include extra commands within the iteration use ; for newline
  arr.inject { |memo, n| puts memo; memo+n }
  # or even better because it hase extra lines
  arr.inject do 
    |memo, n| 
    puts memo
    memo+n      
  end 
  # note: i like to think of the last expression in code block as what is returned
  # by each iteration and it becomes the new memo for the next iteration


# Example : find the longest word
  arr = ['helium', 'strawberry', 'Egypt', 'algorithm']
  arr.inject do |memo, e|
    if memo.length > e.length
      memo
    else 
      e
    end
  end
  # => "strawberry"


# Example : same example with ternary, find the longest word
  arr.inject { |memo, e| memo.length>e.length ? memo : e }
  # => "strawberry"
  # NOTE this is the sort of code that I would expect my devs to accompany with a comment








