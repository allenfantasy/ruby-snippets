class Array
  def iterate!(code)
    # self, not 'this'
    self.each_with_index do |n,i|
      self[i] = code.call(n)
    end
  end
end

array = [1,2,3,4]

array.iterate!( lambda { |n| n ** 2 })

puts array.inspect

def args(code)
  one, two = 1, 2
  code.call(one, two)
end

args(Proc.new{|a,b,c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

#args(lambda{|a,b,c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

def proc_return
  Proc.new { return "Proc.new" }.call
  return "proc_return method finished"
end
def lambda_return
  lambda { return "lambda}" }.call
  return "proc_return method finished"
end

puts proc_return
puts lambda_return
