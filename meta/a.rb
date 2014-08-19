module A
  class << self
    include A
    def x
      puts 'x'
    end
  end

  def y
    puts 'y'
  end
end

A.x
A.y
