# loop {} or loop do end
    # break if => means terminate loop
    # next if means jump to next iteration
    # redo means start this iteration again
    # retry means start the whole loop from the beginning 
    x = 0 
    loop do
        x += 2
        break if x >= 20    # stops after printing 18
        next if x == 6        # skips printing 6
        puts x
    end 
    # can also swap do end for { } block delimiters
    x = 0 
    loop {
        x += 2
        break if x >= 20    # stops after printing 18
        next if x == 6        # skips printing 6
        puts x
    }




# while 
    x = 0
    while x < 20            # stops after printing 18
        x += 2
        next if x == 6        # skips printing 6 
        puts x
    end
# while as inline syntax
    x = 0
    puts x += 2 while x < 20



# until loop
    x = 0
    until x == 20
        x += 2
        puts x        
    end
# until as inline syntax
    x = 0
    puts x += 2 until x == 20


# for 
    for fruit in ['apple', 'banana', 'cherry', 'date'] do
        puts fruit 
    end
    # but the following syntax below will FAIL!   why?  I have no idea
    for fruit in ['apple', 'banana', 'cherry', 'date'] { puts fruit }
    # I asked on stack and answer is here
    # http://stackoverflow.com/questions/41373454/ruby-for-in-loop-error-with-block-delimiter


# iterator methods
    # .times
    5.times do
        puts "hello"
    end
    # .times can also be written as 
    5.times { puts "hello" }
    # with an iterater
    5.times do |i|              # delimter iterator with pipes
        puts "hello "+i.to_s    # note the change of type
    end
    # .upto
    1.upto(5) { |i| puts "hello"+i.to_s} 
    # .downto
    5.downto(1) { |i| puts "hello"+i.to_s}


# .each iterator method
    # .each
    (1..5).each { |i| puts "hello"+i.to_s}
    ['apple', 'banana', 'cherry', 'date'].each { |fruit| puts fruit }
    h.each {|key, value| puts "#{key} is #{value}" }    # for hash
    # NOTE that break, next, redo and retry all work within this loop


# SUMMARY on iterator methods
=begin
    Integers and Floats
        .times .upto .downto .step
    Range
        .each .step
    String
        .each .each_line .each_byte
    Array
        .each .each_index .each_with_index
    Hash
        .each .each_key .each_value .each_pair
=end




