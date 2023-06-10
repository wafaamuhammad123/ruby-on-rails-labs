def exchangeFirstLastChar(str)

    if str.length <=1
        return "Enter a String with more than one character"
    end

    cpy=str
    cpy[0],cpy[-1]=cpy[-1],cpy[0]
    
    return cpy
end

puts exchangeFirstLastChar("Python")


