# frozen_string_literal: true

require_relative '../enumerable'

RSpec.describe Enumerable do
    
    let(:array) { [1, 2, 3, 4] }
    let(:array_new) { [] }
    
    context '#my_each' do
        
        it 'iterates through an iterable object' do
            array.my_each { |x| array_new.push(x) }
            expect(array_new).to eql([1, 2, 3, 4])
        end
        
        it 'accepts blocks and apply it to all the elements' do
            array.my_each { |x| array_new.push(x * 5) }
            expect(array_new).to eql([5, 10, 15, 20])
        end
        
    end
    
    context '#my_each_with_index' do
        
        it 'iterates through an iterable object and return the actual index' do
            array.my_each_with_index { |x, i| array_new.push(i) }
            expect(array_new).to eql([0, 1, 2, 3])
        end
        
        it 'accepts blocks and apply it to all the elements operating with the index' do
            array.my_each_with_index { |x, i| array_new.push(x) if i.even? }
            expect(array_new).to eql([1, 3])
        end
        
    end
    
    context '#my_select' do
    
        it 'select a specific type of values' do
            array.my_select { |x| array_new.push(x) if x.is_a? Integer }
            expect(array_new).to eql([1, 2, 3, 4])
        end

        it 'return all the even values' do
            array.my_select { |x| array_new.push x if x.even? }
            expect(array_new).to eql([2, 4])
        end
    
    end
    
    context '#my_all' do
        
        it 'check if any of the values are nil or false' do
            expect(array.my_all).to eql(true)
        end
        
        it 'check if all the values are equal to a parameter' do
            expect(array.my_all(3)).to eql(false)
        end
        
        it 'accepts blocks' do
            expect(array.my_all { |x| x.is_a? Integer }).to eql(true)
        end
        
    end
    
    context '#my_any' do
        
        it 'check if an array at least has a true value' do
            expect(array.my_any).to eql(true)
        end
        
        it 'verify if an array at least has a value equal to a given parameter' do
            expect(array.my_any(3)).to eql(true)
        end

        it 'it accepts blocks' do
            expect(array.my_any { |x| x > 2 }).to eql(true)
        end
        
    end
    
    context '#my_none' do
      
        it 'verify if all the elements are false or nil' do
            expect(array.my_none).to eql(false)
        end

        it 'verify if a given parameter is not contained in the object' do
            expect(array.my_none('a')).to eql(true)
        end
        
        it 'accept blocks' do
            expect(array.my_none{ |x| x < 0 }).to eql(true)
        end
        
    end
    
    context '#my_count' do
        
        it 'count all the elements of an array' do
            expect(array.my_count).to eql(4)
        end
        
        it 'count all the elements equal to a given parameter' do
            expect(array.my_count(3)).to eql(1)
        end
        
    end
    
end
