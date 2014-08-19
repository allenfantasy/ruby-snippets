class Array
  def iterate!
    self.each_with_index do |n,i|
      self[i] = yield(n)
    end
  end

  def iterate!(code) # another style of iterate: use block as argument
    self.each_with_index do |n,i|
      self[i] = code.call(n)
    end
  end
end

array_1 = [1,2,3,4]
array_2 = [2,3,4,5]

square = Proc.new do |n|
  n ** 2
end

array_1.iterate!(square)
array_2.iterate!(square)

puts array_1.inspect
puts array_2.inspect


