module Myenumerable
 def all?(&block)
  each { |n| return false unless yeild(n) }
  true
 end

 def any?(&block)
  each { |n| return true if yeild(n) }
  false
 end

 def filter(&block)
  result = []
  each { |n| result.push(n) if yeild(n)}
  result
 end
end