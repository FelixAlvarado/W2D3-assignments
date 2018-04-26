def my_uniq(arr)
  hsh = Hash.new(0)
  arr.each {|el| hsh[el] += 1}
  hsh.keys
end

def my_two_sum(arr)
  result = []
  i = 0 
  while i < arr.length 
    j = i + 1 
      while j < arr.length 
        result << [i,j] if arr[i] + arr[j]  == 0 
        j += 1
      end 
    i += 1
  end 
  result 
end 

def my_transpose(arr)
  result = Array.new(3){Array.new}
  arr.length.times do |idx1|
    arr.length.times do |idx2|
      result[idx1] << arr[idx2][idx1]
    end 
  end 
  result
end 

def stock_picker(arr)
  hsh = Hash.new
  (0...arr.length).each do |idx1|
    (idx1+1...arr.length).each do |idx2|
      next if idx2 == arr.length
      hsh[arr[idx2] - arr[idx1]] = [idx1,idx2] if arr[idx2] > arr[idx1]
      
    end
  end
  hsh[hsh.keys.max]
end








