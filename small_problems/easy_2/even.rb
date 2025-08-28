evens = (1..99).to_a.select { |i| i.even? }
puts evens

evens = []
1.upto(99) { |i| evens << i }
evens.each { |i| puts i if i.even? }
