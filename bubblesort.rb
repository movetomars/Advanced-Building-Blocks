def bubblesort(nums)
    unsorted = true
    
    (nums.length-1).times do
        (0..nums.size-1).each do |i|
            
            if (nums[i] <=> nums[i+1]) == 1
                nums[i], nums[i+1] = nums[i+1], nums[i]
                unsorted = false
            end
            
        end
        
    end while unsorted

    return nums
end

puts bubblesort([ 89, 6, 2, 49, 0, 4, 7 ])

def bubblesort_by(arr)
    if x <=> y == 1
        x, y = y, x
    end
end

puts bubblesort_by(["what", "do", "you", "think", "you're", "doing"]) {|x, y| x.length - y.length}