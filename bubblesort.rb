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

def bubblesort_by()

end