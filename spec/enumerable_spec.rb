# frozen_string_literal: true

require_relative '../enumerable'

RSpec.describe Enumerable do
    
    let(:array) { [1, 2, 3, 4] }
    let(:array_new) { [] }
    
    context '#my_each' do
        
        it 'iterates through an object' do
            array.my_each { |x| array_new.push(x) }
            expect(array_new).to eql([1, 2, 3, 4])
        end
        
    end
    
end
