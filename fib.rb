def fib_it(n)
  fib_1 = 0
  fib_2 = 1
  
  ary = [fib_1, fib_2]
  (n-2).times do #loop 
    fib = fib_2 + fib_1
    ary << fib
    fib_2, fib_1 = fib, fib_2
  end
  return ary[0..n] if n < 2
  ary
end

puts fib_it(1).join(", ")
puts fib_it(2).join(", ")
puts fib_it(3).join(", ")
puts fib_it(5).join(", ")
puts fib_it(10).join(", ")

p '--'

def fib_rec(n)
  return [0, 1][0...n] if n < 3
  return (fib = fib_rec(n-1)) + [fib[-1] + fib[-2]]
end

9 

puts fib_rec(1).join(", ")
puts fib_rec(2).join(", ")
puts fib_rec(3).join(", ")
puts fib_rec(5).join(", ")
puts fib_rec(10).join(", ")

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
