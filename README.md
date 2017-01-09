# ruby-essential-training
<br/>
#### My notes taken during course from kevin skoglund, lynda.com

    # this is a single line comment
    
    =begin
      this is a multi line comment
      IMPORTANT!!! the = must be the first character on the line
    =end

    # ruby devs prefer TWO space indentation not four, this is kinda important to the community


On the command line    

    $ irb                # start interpreter on command line
    $ irb --simple-prompt
    > quit               # quit to exit

    $ ruby -v            # to get version / see if installed

    $ ruby myscript.rb   # must include .rb extension to run a script

Docs are at <a href="http://ruby-doc.org/core" target="_blank">http://ruby-doc.org/core</a>

Also docs avail from command line just type `ri` before a command

    $ ri upcase     # spits out docs for upcase same as at the link above 

<br/>
**objects, vars, ints, floats, strings, string templates, arrays, hashes, symbols, booleans, logic operators, ranges, constants**<br/>
[ch2\_obj\_var\_float\_hash\_symbol\_etc.rb](./ch2_obj_var_float_hash_symbol_etc.rb)

<br/>
**if, elsif, unless, case, ternary, or, or-equals**<br/>
[ch3.1\_if\_elsif\_unless\_case\_ternary\_or.rb](./ch3.1_if_elsif_unless_case_ternary_or.rb)

<br/>
**loop, while, until, upto, each, for, in**<br/>
[ch3.2\_loop\_while\_until\_times\_upto\_each\_for\_in.rb](./ch3.2_loop_while_until_times_upto_each_for_in.rb)<br/>
_• Added additional research on block delimeters do end vs { } with a stack overflow question_


<br/>
**code block uses local variable instead of block scope variable in older versions of ruby**<br/>
[ch4.1\_code\_block\_scope\_ruby\_1.9.1.rb](./ch4.1_code_block_scope_ruby_1.9.1.rb)

<br/>
**find, include, find\_all, any?, all?, delete\_if**<br/>
[ch4.2\_find\_include\_any\_all\_delete\_if.rb](./ch4.2_find_include_any_all_delete_if.rb)<br/>
_• Added additional research, code block as a transformer for the method_

<br/>
**merge and collect**<br/>
[ch4.3\_merge\_collect.rb](./ch4.3_merge_collect.rb)

<br/>
**comparison operator and sort**<br/>
[ch4.4\_comparison\_operator\_sort.rb](./ch4.4_comparison_operator_sort.rb)

<br/>
**inject and memo**<br/>
[ch4.5\_inject\_memo.rb](./ch4.5_inject_memo.rb)

<br/>
**methods aka functions**<br/>
[ch5\_methods\_aka\_functions\_require\_args\_return.rb](./ch5_methods_aka_functions_require_args_return.rb)

<br/>
**classes, instance scoped vars, attr, initialize method**<br/>
[ch6.1\_classes\_attr\_instance\_vars\_initialize.rb](./ch6.1_classes_attr_instance_vars_initialize.rb)<br/>
_• Additional research, how do we set a private method when all methods are public by default?_<br/>
_• Stackoverflow thread explaining confusing part of the turoial where the method is named 'noise='_

<br/>
**class methods, example factory, class scoped vars, class scoped reader and writer**<br/>
[ch6.2\_class\_method\_and\_class\_scope\_reader\_writer.rb](./ch6.2_class_method_and_class_scope_reader_writer.rb)<br/>
_• TO DO: Additional research needed on keyword self. when used inside the initialize method, is it pointing to the instance not the class?_

<br/>
**inheritance, subclass superclass, overriding methods, calling super**<br/>
[ch6.3\_inheritance\_subclass\_superclass\_override\_super.rb](./ch6.3_inheritance_subclass_superclass_override_super.rb)<br/>




