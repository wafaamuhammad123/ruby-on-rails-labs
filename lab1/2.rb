def checkif(str)
    if str.length <=1
        return false
    end
    if(str[0]=='i' && str[1]=='f')
        return true
    else
        return false
    end
end


# puts checkif("if")
puts checkif("iff")