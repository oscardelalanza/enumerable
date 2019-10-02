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
    
end
