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


-objects, vars, ints, floats, strings, string templates, arrays, hashes, symbols, booleans, logic operators, ranges, constants<br/>
[ch2-obj-var-float-hash-symbol-etc.rb](./ch2-obj-var-float-hash-symbol-etc.rb)

-if, elsif, unless, case, ternary, or, or-equals<br/>
[ch3.1-if-elsif-unless-case-ternary-or.rb](./ch3.1-if-elsif-unless-case-ternary-or.rb)

-loop, while, until, upto, each, for, in<br/>
[ch3.2-loop-while-until-times-upto-each-for-in.rb](./ch3.2-loop-while-until-times-upto-each-for-in.rb)<br/>
_• Added additional research on block delimeters do end vs { } with a stack overflow question_

-code block uses local variable instead of block scope variable in older versions of ruby<br/>
[ch4.1-code-block-scope-ruby-1.9.1.rb](./ch4.1-code-block-scope-ruby-1.9.1.rb)

-find, include, find-all, any?, all?, delete-if<br/>
[ch4.2-find-include-any-all-delete-if.rb](./ch4.2-find-include-any-all-delete-if.rb)<br/>
_• Added additional research, code block as a transformer for the method_

-merge and collect<br/>
[ch4.3-merge-collect.rb](./ch4.3-merge-collect.rb)

-comparison operator and sort<br/>
[ch4.4-comparison-operator-sort.rb](./ch4.4-comparison-operator-sort.rb)

-inject and memo<br/>
[ch4.5-inject-memo.rb](./ch4.5-inject-memo.rb)

-methods aka functions<br/>
[ch5-methods-aka-functions-require-args-return.rb](./ch5-methods-aka-functions-require-args-return.rb)

-classes, instance scoped vars, attr, initialize method<br/>
[ch6.1-classes-attr-instance-vars-initialize.rb](./ch6.1-classes-attr-instance-vars-initialize.rb)<br/>
_• Additional research, how do we set a private method when all methods are public by default?_<br/>
_• Stackoverflow thread explaining confusing part of the turoial where the method is named 'noise='_

-class methods, example factory, class scoped vars, class scoped reader and writer<br/>
[ch6.2-class-method-and-class-scope-reader-writer.rb](./ch6.2-class-method-and-class-scope-reader-writer.rb)<br/>
_• TO DO: Additional research needed on keyword self. when used inside the initialize method, is it pointing to the instance not the class?_

inheritance, subclass superclass, overriding methods, calling super<br/>
[ch6.3-inheritance-subclass-superclass-override-super.rb](./ch6.3-inheritance-subclass-superclass-override-super.rb)<br/>

modules, namespacing, require and include<br/>
[ch7-modules-namespacing-require-include.rb](./ch7-modules-namespacing-require-include.rb)<br/>

