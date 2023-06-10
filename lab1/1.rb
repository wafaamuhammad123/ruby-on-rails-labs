
def copyString(str,n)
    if n < 0
        return "Please enter a number greater than 0"
    end
    result=""
    for i in 0...n
        result += str
    end
    return result
end

result= copyString("hello",3)
puts result