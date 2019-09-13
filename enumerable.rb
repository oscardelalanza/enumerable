# frozen_string_literal: true

module Enumerable
    
    def my_each(array)
        
        size = array.size
        index = 0
        
        while index < size
            
            yield(array[index])
            index += 1
            
        end
        
    end

    def my_each_width_index; end

    def my_select; end

    def my_all; end

    def my_any; end

    def my_none; end

    def my_count; end

    def my_map; end

    def my_inject; end

end
