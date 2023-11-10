def my_uniq(arr)
    raise 'wrong data type' unless arr.is_a?(Array)
    arr.uniq
end

class Array
   def two_sum
    raise "empty array" if self.empty?
     new_2d_arr = []
     (0...self.length).each do |idx|
       (idx+1...self.length).each do |jdx|
         if self[idx] + self[jdx] == 0
           new_2d_arr << [idx, jdx]
         end
       end
     end
     new_2d_arr
   end
end

def my_transpose(arr)
  new_arr = Array.new(arr.length) { Array.new(arr.length) }
  (0...arr.length).each do |row|
    (0...arr.length).each do |col|
       new_arr[row][col] = arr[col][row]
    end    
  end

  new_arr
end