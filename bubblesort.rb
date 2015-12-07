def bubblesort(nums)

    nums = nums.map(&:to_i)
    n = nums.length

    (n - 1).times do loop
        nums.each_with_index do |int, index|
            
            if (int[index] <=> int[index + 1]) == 1
                int[index] = int[index + 1]
                int[index + 1] = int[index]

            end
        end
    
    end

    print nums
end

puts "Enter the integers you'd like to sort, separated by commas."

nums = gets.chomp.gsub(/\s+/, "").split(",")

puts bubblesort(nums)