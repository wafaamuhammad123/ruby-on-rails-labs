def addTheLastCharTotheEndAndTheStart(str)
    if str.length < 1
        return "Enter a String with more than one character"
    end    
    cpy = str
    cpy+=str[-1]
    cpy=str[-1]+ cpy
    
    return cpy
end 

puts addTheLastCharTotheEndAndTheStart("abc")

