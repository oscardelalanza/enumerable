# frozen_string_literal: true

module Enumerable
    
    def my_each
        
        size = self.size
        index = 0
        
        yield(self[index]) while index < size
        
    end

    def my_each_with_index
    
        size = self.size
        index = 0
        
        yield(self[index], index) while index < size
        
    end

    def my_select
        
        new_array = []

        my_each do |element|
            
            new_array.push(element) if yield(element)
            
        end
        
        new_array
        
    end

    def my_all
        
        all_true = true

        my_each do |element|
            
            all_true = false unless yield(element)
            
        end
        
        all_true
        
    end

    def my_any
        
        any = false

        my_each do |element|
            
            any = true if yield(element)
            
        end
        
        any
        
    end

    def my_none
        
        none = true

        my_each do |element|
            
            none = false if yield(element)
            
        end
        
        none
    
    end

    def my_count
        
        total = 0

        my_each do |element|
            
            total += 1 if yield(element)
            
        end
        
        total
        
    end

    def my_map
        
        new_array = []

        my_each do |element|
            
            new_array.push(yield(element))
            
        end
        
        new_array
        
    end
    
    def my_inject
        
        base = array[0]
        
        my_each do |element|
            
            base = yield(base, element)
            
        end
        
        base
        
    end
    
    def multiply_els
        
        my_inject do |base, element|
            
            base * element
            
        end
        
    end
    
end

puts multiply_els([2, 4, 5])
