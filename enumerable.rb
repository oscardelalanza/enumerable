# frozen_string_literal: true

module Enumerable
    
    def my_each(array)
        
        size = array.size
        
        for index in range 0 ... size
            
            yield(array[index])
            
        end
        
    end

    def my_each_with_index(array)
    
        size = array.size
    
        for index in range 0 ... size
        
            yield(array[index])
    
        end
        
    end

    def my_select(array)
        
        new_array = []
        
        array.each do |element|
            new_array.push(element) if yield(element)
        end
        
        return new_array
        
    end

    def my_all; end

    def my_any; end

    def my_none; end

    def my_count; end

    def my_map; end

    def my_inject; end

end
