# Code block scope and Ruby 1.9.1

	e = 99
	[1,2,3,4].each { |e| puts e }

# older version of ruby will use the local scope variable e within the block so it 
# will end where e has been reassigned the value of 4 by the last loop iteration
# from Ruby 1.9.1 a new block level variable of e will be used leaving the 
# local e alone so it retains its value of 99


