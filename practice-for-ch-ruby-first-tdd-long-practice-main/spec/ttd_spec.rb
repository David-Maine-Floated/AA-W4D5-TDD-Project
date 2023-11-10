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
describe Array do 
    describe "Array#two_sum" do 
      it "returns a 2D-array" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
      end

      it "returns empty array if no two elements sum to zero " do
        expect([1,2,3,4,5].two_sum).to eq([])
      end

      it "raises error 'empty array' if passed an empty array" do 
        expect{[].two_sum}.to raise_error("empty array")
      end

    end
end

describe "#my_transpose" do 
    rows = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]
    cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
    ]
    it "takes a 2d-array and returns a transposed copy" do 
      expect(my_transpose(rows)).to eq(cols)
    end

    it "should return a new array" do 
      expect(rows).not_to be(my_transpose(rows))
    end

end

