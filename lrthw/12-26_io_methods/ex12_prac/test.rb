require './fruit'
require './no_module'
class Eden
  include Fruit
end

eden = Eden.new
eden.something

no_module # try method
