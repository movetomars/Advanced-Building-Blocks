def bubblesort(nums)

    nums = nums.map(&:to_i)
    n = nums.length

    (n - 1).times do loop
        nums.each do |int|
            
            if (int[i] > int[i + 1])
                int[i], int[i + 1] = int[i + 1], int[i]

            end
        end
    
    end

    return nums
end

puts "Enter the integers you'd like to sort, separated by commas."

nums = gets.chomp.gsub(/\s+/, "").split(",")

puts bubblesort(nums)