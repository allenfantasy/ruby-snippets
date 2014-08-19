def mergesort(array, head, tail)
  return array if head == tail
  mid = (head + tail) / 2
  mergesort(array, head, mid)
  mergesort(array, mid+1, tail)
  merge(array, head, mid, tail)
end

def merge(array, head, mid, tail)
  tmp = []
  i, j = head, mid + 1
  while i <= mid && j <= tail
    if array[i] < array[j]
      tmp << array[i]
      i = i + 1;
    else
      tmp << array[j]
      j = j + 1;
    end
  end
  tmp = tmp + array[j..tail] if i > mid
  tmp = tmp + array[i..mid] if j > tail

  tmp.each_with_index do |value, index|
    array[head + index] = value
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

mergesort(a1, 0, 9)
mergesort(a2, 0, 9)
mergesort(a3, 0, 9)
mergesort(a4, 0, 9)

puts "array1: #{a1.inspect}"
puts "array2: #{a2.inspect}"
puts "array3: #{a3.inspect}"
puts "array4: #{a4.inspect}"
