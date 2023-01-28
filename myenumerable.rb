module Myenumerable
 def all?(&block)
  each { |n| return false unless block.call(n) }
  true
 end

 def any?(&block)
  each { |n| return true if block.call(n) }
  false
 end

 def filter(&block)
  result = []
  each { |n| result.push(n) if block.call(n) }
 result
 end
end