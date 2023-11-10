
require 'ttd.rb'


describe '#my_uniq' do

    array = [1,2,3,3,4,5,5]
        it 'should return a new array with any duplicate elements removed.' do 

            expect(my_uniq(array)).to eq([1,2,3,4,5]) 
        end    
        it 'should return an empty array if input array is emtpy' do 
            expect(my_uniq([])).to eq([])
        end    

        it "should raise error 'wrong data type' if a non Array is passed in." do
            expect {my_uniq('string')}.to raise_error('wrong data type') 
        end

        it "shouldn't mutate original array" do  
            expect(array).to eq([1,2,3,3,4,5,5])
        end

        it "should return a copy of the array even if no changes occurred" do 
            array_2 = [1,2,3]
            expect(my_uniq(array_2)).to eq([1,2,3])
        end    

end