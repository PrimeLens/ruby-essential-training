# if
  # if then
  if x < 10
    puts "Below 10"
  end 
  # if else
  if x < 10
    puts "Below 10"
  else
    puts "10 or more"
  end
  # if elsif else
  if x < 10
    puts "Below 10"
  elsif x > 20         # yes its spelt this way! 
    puts "Over 20"
  else
    puts "10-20"
  end
  # in one line, below syntax is a FAIL, you cannot remove the newlines like the example below
  if x < 10 puts "Below 10" elsif x > 10 puts "Over 20" else puts "10-20" end
  # in one line CORRECT FORMAT is below
  puts "Below 10" if x < 10
  if x < 10 puts "Below 10" elsif x > 10 puts "Over 20" else puts "10-20" end



# unless 
  # is kind of useless, I would rather see developers use the ! 
  unless x < 10
    puts "10 or more"
  end 
  # exactly the same as 
  if !x < 10
    puts "10 or more"
  end 


# case 
  # aka switch
  case            # this is actually case true    
  when x < 10
    puts "Below 10"
  when x >= 10 && x <= 20
    puts "10-20"
  when x > 20
    puts "Over 20"        
  end

  case x          # also can write it like this
  when 1
    puts "Fred"
  when 2
    puts "Mary"
  when 3
    puts "Bob"        
  end
  

# ternary
  str = x < 10 ? "Below 10" : "10 or more"

# or  
  # used in an assignment instead of being used as a logical operator
  # like a ternary but tests for existance of the variable
  x = y || z   # means that if y doesn't exist x = z 

# or-equals
  if !x
    x = y
  end
  # can be written with or-equals
  x ||= y





