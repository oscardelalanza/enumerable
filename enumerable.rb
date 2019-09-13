# frozen_string_literal: true

module Enumerable
    
    def my_each(array)
        
        size = array.size
        
        for index in range 0 ... size
            
            yield(array[index])
            
        end
        
    end

    def my_each_width_index(array)
    
        size = array.size
    
        for index in range 0 ... size
        
            yield(array[index])
    
        end
        
    end

    def my_select(array)
        
        newArray = []
        
        array.each do |element|
            newArray.push(element) if yield(element)
        end
        
        return newArray
        
    end

    def my_all; end

    def my_any; end

    def my_none; end

    def my_count; end

    def my_map; end

    def my_inject; end

end
