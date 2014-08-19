module Foo
  def bar
    'baz'
  end
end

class A
  extend Foo
end

module B
  extend Foo
end

a = A.new

#puts A.bar
#puts A.new.bar
#puts B::bar
#puts B.bar

a.extend Foo

#puts a.bar

#puts a.respond_to? :include
