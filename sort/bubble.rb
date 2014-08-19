def bubble(array, length)
  return "fuck you" if not array.is_a? Array
  for i in 0..length-1
    for j in 0..length-i-2
      if array[j] > array[j+1]
        tmp = array[j]
        array[j] = array[j+1]
        array[j+1] = tmp
      end
    end
  end
end

a1 = [10,9,8,7,6,5,4,3,2,1]
a2 = [1,2,3,4,5,6,7,8,9,10]
a3 = [9,3,2,7,4,1,5,39,22,10]
a4 = [3,5,5,6,3,2,2,2,2,2]

puts "array1: #{a1.inspect}"
puts "array2: #{a2.inspect}"
puts "array3: #{a3.inspect}"
puts "array4: #{a4.inspect}"

bubble(a1, 10)
bubble(a2, 10)
bubble(a3, 10)
bubble(a4, 10)

puts "array1: #{a1.inspect}"
puts "array2: #{a2.inspect}"
puts "array3: #{a3.inspect}"
puts "array4: #{a4.inspect}"
