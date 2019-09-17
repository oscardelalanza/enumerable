# frozen_string_literal: true

module Enumerable
    
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
        array.each { |x| all_true = false unless yield(x) }
        
        all_true
        
    end

    def my_any; end

    def my_none; end

    def my_count; end

    def my_map; end

    def my_inject; end

end
