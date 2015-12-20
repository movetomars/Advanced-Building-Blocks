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
    unsorted = true
    
    (arr.size-1).times do
        (0..arr.size-1).each do |i|
            if yield(arr[i] <=> arr[i + 1]) == 1
                arr[i], arr[i+1] = arr[i+1], arr[i]
                unsorted = false
            end
        end
    end while unsorted
    
    arr
end

puts bubblesort_by(["what", "do", "you", "think", "you're", "doing"]) {|x,y| y.to_s.length - x.to_s.length}
