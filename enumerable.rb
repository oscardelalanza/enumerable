# frozen_string_literal: true

module Enumerable
    
    def initialize; end
    
    def my_each(array)
        
        size = array.size
        index = 0
        
        yield(array[index]) while index < size
        
    end

    def my_each_with_index(array)
    
        size = array.size
        index = 0
        
        yield(array[index], index) while index < size
        
    end

    def my_select(array)
        
        new_array = []
        
        array.each do |element|
            
            new_array.push(element) if yield(element)
            
        end
        
        new_array
        
    end

    def my_all(array)
        
        all_true = true
        
        array.each do |element|
            
            all_true = false unless yield(element)
            
        end
        
        all_true
        
    end

    def my_any(array)
        
        any = false
        
        array.each do |element|
            
            any = true if yield(element)
            
        end
        
        any
        
    end

    def my_none(array)
        
        none = true
        
        array.each do |element|
            
            none = false if yield(element)
            
        end
        
        none
    
    end

    def my_count(array)
        
        total = 0
        
        array.each do |element|
            
            total += 1 if yield(element)
            
        end
        
        total
        
    end

    def my_map(array)
        
        new_array = []
        
        array.each do |element|
            
            new_array.push(yield(element))
            
        end
        
        new_array
        
    end
    
    def my_inject
        
        base = self[0]
        
        each do |element|
            
            base = yield(base, element)
            
        end
        
    end
    
    def multiply_els(array)
        
        array.my_inject do |base, element|
            
            base * element
            
        end
        
    end
    
end
