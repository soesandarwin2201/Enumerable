require_relative 'myenumerable'

class MyList
include Myenumerable
 def initialize(*list)
  @list = list
 end

 def each(&block)
  @list.each(&block)
 end
end

list = MyList.new(1,2,3,4)
puts(list.all? { |n| n < 5 } )

puts(list.all? { |n| n > 5 } )

puts(list.any? { |n|n == 2 })

puts(list.any? { |n| n == 5 })

puts(list.filter(&:even?))