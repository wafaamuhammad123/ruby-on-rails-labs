def rotateLeft(arr)
    arr.push(arr.shift)
    return arr
end

puts rotateLeft([1,2,3])