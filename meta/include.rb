module Foo
  def bar
    'baz'
  end
end

class A
  include Foo
end

module B
  include Foo
end

#puts A.bar
#puts A.new.bar
#puts B::bar
#puts B.bar
puts B.new.bar
