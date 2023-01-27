require_relative 'myenumerable'

class MyList
include Myenumerable
 def initialize(*list)
  @list = list
 end

 
end