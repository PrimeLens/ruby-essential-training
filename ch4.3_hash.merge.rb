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
