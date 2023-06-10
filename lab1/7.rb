def compute_sum(array)
    return 0 if array.empty?
  
    result = []
    skip_next = false
  
    array.each_with_index do |num, index|
      if skip_next
        skip_next = false
        next
      end
  
      if num == 17
        skip_next = true
        next
      end
  
      result << num
    end
  
    result.sum
end