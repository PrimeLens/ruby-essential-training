# ruby-essential-training
<br/>
#### My notes taken during course from kevin skoglund, lynda.com

    # this is a single line comment
	=begin
		this is a multi line comment
		IMPORTANT!  the = must be the first character on the line
	=end

    $ irb                # start interpreter on command line
    $ irb --simple-prompt
    > quit               # quit to exit

    $ ruby -v            # to get version / see if installed

    $ ruby myscript.rb   # must include .rb extension to run a script

Docs are at <a href="http://ruby-doc.org/core" target="_blank">http://ruby-doc.org/core</a>

Also docs avail from command line just type `ri` before a command

    $ ri upcase			# spits out docs for upcase same as at the link above 

<br/>
**objects, vars, ints, floats, strings, arrays, hashes, symbols, booleans, logic operators, ranges, constants**<br/>
[ch2\_obj\_var\_float\_hash\_symbol\_etc.rb](./ch2_obj_var_float_hash_symbol_etc.rb)

**if, elsif, unless, case, ternary, or, or-equals**<br/>
[ch3.1\_if\_elsif\_unless\_case\_ternary\_or.rb](./ch3.1_if_elsif_unless_case_ternary_or.rb)

**loop, while, until, upto, each, for, in**<br/>
[ch3.2\_loop\_while\_until\_times\_upto\_each\_for\_in.rb](./ch3.2_loop_while_until_times_upto_each_for_in.rb)

**code block uses local variable instead of block scope variable in older versions of ruby**<br/>
[ch4.1\_code\_block\_scope\_ruby\_1.9.1.rb](./ch4.1_code_block_scope_ruby_1.9.1.rb)

**.find .include .find\_all .any? .all? delete\_if**<br/>
[ch4.2\_find\_include\_any\_all\_delete\_if.rb](./ch4.2_find_include_any_all_delete_if.rb)






