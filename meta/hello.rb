#module M
  #def greet
    #"hello from M"
  #end
#end

#include M

def greet
  "hello from M"
end

puts self.methods.inspect

#class C; end

#c = C.new

#puts c.greet
#puts C.greet

