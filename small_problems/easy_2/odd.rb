odd = 1
while odd < 100
  puts odd
  odd += 2
end

odds = (1..100).to_a.select { |num| num % 2 != 0 }
puts odds

odds = []
1.upto(100) { |i| odds << i }
odds.each { |i| puts i if i.odd? }
