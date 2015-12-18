def bubblesort(nums)
    
    (0..nums.size-1).each do |i|
            
        if nums[i] > nums[i + 1]
                nums[i], nums[i + 1] = nums[i + 1], nums[i]
        end
    end

    return nums
end

bubblesort([ 89, 6, 2, 49, 0, 4, 7 ])

def bubblesort_by()

end