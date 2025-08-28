print "What is the bill? "
bill = gets.to_f

print "What is the tip percentage? "
tip_rate = gets.to_f

tip = (bill * (tip_rate / 100.0)).round(2)
total = bill + tip

puts "\nThe tip is $#{sprintf('%.2f', tip)}"
puts "The total is $#{sprintf('%.2f', total)}"
