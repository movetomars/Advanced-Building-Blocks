module Enumerable

def my_each
    i = 0
    while i < self.size
        yield(self[i])
        i += 1
    end
    self
end

def my_each_with_index
    (self.size-1).times do |i|
       yield(self[i], i)
    end
    self
end

def my_select
    yes = []
    self.my_each do |i|
        yes << i if yield(i)
    end
    yes
end

def my_all?
    yes = []
    self.my_each do |i|
        yes << i if yield(i)
    end
    
    return true if yes.size == self.size
    return
end

def my_any?
    yes = []
    self.my_each do |i|
        yes << i if yield(i)
    end
    
    return true if yes.size > 0
    return
end

def my_none?
    yes = []
    
    self.my_each do |i|
        yes << i if yield(i)
    end
        
    return true if yes.size == 0
    return
end

def my_count(*args, &block)

end

end

