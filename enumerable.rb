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
    count = 0
    
    self.my_each do |i|
        if args.empty? && !block_given?
            count += 1
        elsif block_given?
            count += 1 if yield(i)
        else
            count += 1 if i.include? args
        end
    end
    
    return count
end

def my_map
    new = []
    
    self.my_each do |i|
        new << yield(i)
    end
    
    new
end

def my_inject
    total = self.first
    
    self.my_each_with_index do |val, i|
        total = yield(val, i)
    end
    total
end

def multiply_els
    self.my_inject{|x, y| x * y}
end

def my_map_proc(proc)
    new = []
    
    self.my_each do |i|
        if proc && block_given?
             new << proc.call(yield(i))
        else
             new << proc.call(i)
        end
    end
    new
end

end

